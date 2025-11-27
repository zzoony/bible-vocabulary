import 'package:isar/isar.dart';

part 'word_model.g.dart';

@collection
class WordModel {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.hash)
  late String word;

  late int count;

  @Index()
  late int rank;

  late List<String> sentenceIds;

  String? ipaPronunciation;

  String? koreanPronunciation;

  String? definitionKorean;

  @Index()
  late DateTime createdAt;
}
