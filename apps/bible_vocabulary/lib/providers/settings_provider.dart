import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import '../data/models/app_settings_model.dart';
import 'database_provider.dart';

final themeModeProvider =
    StateNotifierProvider<ThemeModeNotifier, ThemeMode>((ref) {
  return ThemeModeNotifier(ref);
});

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  final Ref _ref;

  ThemeModeNotifier(this._ref) : super(ThemeMode.system) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    try {
      final isar = await _ref.read(isarProvider.future);
      final setting = await isar.appSettingsModels
          .filter()
          .keyEqualTo(SettingsKeys.themeMode)
          .findFirst();

      if (setting?.stringValue != null) {
        state = _parseThemeMode(setting!.stringValue!);
      }
    } catch (e) {
      // Use default on error
    }
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    state = mode;

    try {
      final isar = await _ref.read(isarProvider.future);
      await isar.writeTxn(() async {
        var setting = await isar.appSettingsModels
            .filter()
            .keyEqualTo(SettingsKeys.themeMode)
            .findFirst();

        if (setting == null) {
          setting = AppSettingsModel()..key = SettingsKeys.themeMode;
        }
        setting.stringValue = _themeModeToString(mode);
        await isar.appSettingsModels.put(setting);
      });
    } catch (e) {
      // Ignore save errors
    }
  }

  Future<void> toggleTheme() async {
    final newMode = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    await setThemeMode(newMode);
  }

  ThemeMode _parseThemeMode(String value) {
    switch (value) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  String _themeModeToString(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return 'light';
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.system:
        return 'system';
    }
  }
}
