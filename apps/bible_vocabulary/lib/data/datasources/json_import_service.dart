import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import '../models/word_model.dart';
import '../models/sentence_model.dart';

class JsonImportService {
  final Isar _isar;

  JsonImportService(this._isar);

  /// 기존 데이터를 삭제하고 새로 import
  Future<void> refreshAllData({
    void Function(double progress, String message)? onProgress,
  }) async {
    onProgress?.call(0.0, 'Clearing existing data...');

    // 기존 데이터 삭제
    await _isar.writeTxn(() async {
      await _isar.wordModels.clear();
      await _isar.sentenceModels.clear();
    });

    // 새로 import
    await importAllData(onProgress: onProgress);
  }

  Future<void> importAllData({
    void Function(double progress, String message)? onProgress,
  }) async {
    onProgress?.call(0.0, 'Loading vocabulary data...');

    // Load JSON from assets
    final vocabJson =
        await rootBundle.loadString('assets/data/final_vocabulary.json');
    final sentencesJson =
        await rootBundle.loadString('assets/data/final_sentences_korean.json');

    onProgress?.call(0.1, 'Parsing vocabulary...');

    final vocabData = jsonDecode(vocabJson) as Map<String, dynamic>;
    final sentencesData = jsonDecode(sentencesJson) as Map<String, dynamic>;

    // Parse words
    final wordsList = (vocabData['words'] as List)
        .map((w) => _parseWord(w as Map<String, dynamic>))
        .toList();

    onProgress?.call(0.3, 'Parsing sentences...');

    // Parse sentences
    final sentencesMap = sentencesData['sentences'] as Map<String, dynamic>;
    final sentencesList = sentencesMap.entries
        .map((e) => _parseSentence(e.key, e.value as Map<String, dynamic>))
        .toList();

    onProgress?.call(0.5, 'Saving words to database...');

    // Batch insert words
    await _batchInsert<WordModel>(
      wordsList,
      500,
      (batch) => _isar.writeTxn(() => _isar.wordModels.putAll(batch)),
      onProgress: (p) =>
          onProgress?.call(0.5 + p * 0.2, 'Saving words to database...'),
    );

    onProgress?.call(0.7, 'Saving sentences to database...');

    // Batch insert sentences
    await _batchInsert<SentenceModel>(
      sentencesList,
      500,
      (batch) => _isar.writeTxn(() => _isar.sentenceModels.putAll(batch)),
      onProgress: (p) =>
          onProgress?.call(0.7 + p * 0.3, 'Saving sentences to database...'),
    );

    onProgress?.call(1.0, 'Complete!');
  }

  WordModel _parseWord(Map<String, dynamic> json) {
    return WordModel()
      ..word = json['word'] as String
      ..count = json['count'] as int
      ..rank = json['rank'] as int
      ..sentenceIds = List<String>.from(json['sentence_ids'] ?? [])
      ..ipaPronunciation = json['ipa_pronunciation'] as String?
      ..koreanPronunciation = json['korean_pronunciation'] as String?
      ..definitionKorean = json['definition_korean'] as String?
      ..createdAt = DateTime.now();
  }

  SentenceModel _parseSentence(String id, Map<String, dynamic> json) {
    return SentenceModel()
      ..sentenceId = id
      ..text = json['text'] as String
      ..korean = json['korean'] as String
      ..ref = json['ref'] as String
      ..book = json['book'] as String;
  }

  Future<void> _batchInsert<T>(
    List<T> items,
    int batchSize,
    Future<void> Function(List<T>) insertBatch, {
    void Function(double)? onProgress,
  }) async {
    final totalBatches = (items.length / batchSize).ceil();
    for (int i = 0; i < totalBatches; i++) {
      final start = i * batchSize;
      final end = (start + batchSize).clamp(0, items.length);
      final batch = items.sublist(start, end);
      await insertBatch(batch);
      onProgress?.call((i + 1) / totalBatches);
    }
  }
}
