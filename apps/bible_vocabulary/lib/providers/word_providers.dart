import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import '../data/models/word_model.dart';
import '../data/models/sentence_model.dart';
import '../data/models/user_progress_model.dart';
import 'database_provider.dart';

enum SortOption { frequency, alphabetical, random }
enum StartOption { beginning, resume, random }

final sortOptionProvider = StateProvider<SortOption>((ref) => SortOption.frequency);
final startOptionProvider = StateProvider<StartOption>((ref) => StartOption.beginning);

final allWordsProvider = FutureProvider<List<WordModel>>((ref) async {
  final isar = await ref.watch(isarProvider.future);
  final sortOption = ref.watch(sortOptionProvider);

  switch (sortOption) {
    case SortOption.frequency:
      return await isar.wordModels.where().sortByRank().findAll();
    case SortOption.alphabetical:
      return await isar.wordModels.where().sortByWord().findAll();
    case SortOption.random:
      final words = await isar.wordModels.where().findAll();
      words.shuffle(Random());
      return words;
  }
});

final filteredWordsProvider = FutureProvider<List<WordModel>>((ref) async {
  final words = await ref.watch(allWordsProvider.future);
  final isar = await ref.watch(isarProvider.future);

  // Filter out known words
  final knownWords = await isar.userProgressModels
      .filter()
      .statusEqualTo(WordStatus.known)
      .findAll();
  final knownWordSet = knownWords.map((p) => p.word).toSet();

  return words.where((w) => !knownWordSet.contains(w.word)).toList();
});

final sentenceProvider =
    FutureProvider.family<SentenceModel?, String>((ref, sentenceId) async {
  final isar = await ref.watch(isarProvider.future);
  return await isar.sentenceModels
      .filter()
      .sentenceIdEqualTo(sentenceId)
      .findFirst();
});

final savedWordsProvider = FutureProvider<List<WordModel>>((ref) async {
  final isar = await ref.watch(isarProvider.future);

  final savedProgress = await isar.userProgressModels
      .filter()
      .isSavedEqualTo(true)
      .findAll();

  final savedWordNames = savedProgress.map((p) => p.word).toSet();

  final words = await isar.wordModels.where().findAll();
  return words.where((w) => savedWordNames.contains(w.word)).toList();
});
