import 'package:isar/isar.dart';

part 'user_progress_model.g.dart';

enum WordStatus {
  unknown,
  learning,
  known,
}

@collection
class UserProgressModel {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.hash, unique: true)
  late String word;

  @Enumerated(EnumType.ordinal)
  late WordStatus status;

  late bool isSaved;

  late int viewCount;

  @Index()
  late DateTime lastViewedAt;

  DateTime? masteredAt;
}
