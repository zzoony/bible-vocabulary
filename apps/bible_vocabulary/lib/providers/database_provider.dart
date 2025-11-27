import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../data/models/word_model.dart';
import '../data/models/sentence_model.dart';
import '../data/models/user_progress_model.dart';
import '../data/models/app_settings_model.dart';

final isarProvider = FutureProvider<Isar>((ref) async {
  final dir = await getApplicationDocumentsDirectory();
  return await Isar.open(
    [
      WordModelSchema,
      SentenceModelSchema,
      UserProgressModelSchema,
      AppSettingsModelSchema,
    ],
    directory: dir.path,
  );
});

final wordCountProvider = FutureProvider<int>((ref) async {
  final isar = await ref.watch(isarProvider.future);
  return await isar.wordModels.count();
});

final savedWordCountProvider = FutureProvider<int>((ref) async {
  final isar = await ref.watch(isarProvider.future);
  return await isar.userProgressModels.filter().isSavedEqualTo(true).count();
});
