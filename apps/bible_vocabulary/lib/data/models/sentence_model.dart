import 'package:isar/isar.dart';

part 'sentence_model.g.dart';

@collection
class SentenceModel {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.hash, unique: true)
  late String sentenceId;

  late String text;

  late String korean;

  late String ref;

  @Index()
  late String book;
}
