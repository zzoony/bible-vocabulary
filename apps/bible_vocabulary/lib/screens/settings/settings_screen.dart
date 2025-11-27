import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../../data/datasources/json_import_service.dart';
import '../../providers/database_provider.dart';
import '../../providers/settings_provider.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('설정'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    isDark ? Icons.dark_mode : Icons.light_mode,
                    color: AppColors.mint,
                  ),
                  title: const Text('테마'),
                  subtitle: Text(_getThemeModeText(themeMode)),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => _showThemeDialog(context, ref, themeMode),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.refresh_rounded,
                    color: AppColors.orange,
                  ),
                  title: const Text('데이터 새로고침'),
                  subtitle: const Text('단어 및 예문 데이터 다시 불러오기'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => _showRefreshDialog(context, ref),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.info_outline,
                    color: AppColors.purple,
                  ),
                  title: const Text('앱 버전'),
                  subtitle: const Text('0.1.0'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getThemeModeText(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return '라이트 모드';
      case ThemeMode.dark:
        return '다크 모드';
      case ThemeMode.system:
        return '시스템 설정';
    }
  }

  void _showThemeDialog(BuildContext context, WidgetRef ref, ThemeMode current) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('테마 선택'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<ThemeMode>(
              title: const Text('라이트 모드'),
              value: ThemeMode.light,
              groupValue: current,
              onChanged: (value) {
                if (value != null) {
                  ref.read(themeModeProvider.notifier).setThemeMode(value);
                  Navigator.pop(context);
                }
              },
            ),
            RadioListTile<ThemeMode>(
              title: const Text('다크 모드'),
              value: ThemeMode.dark,
              groupValue: current,
              onChanged: (value) {
                if (value != null) {
                  ref.read(themeModeProvider.notifier).setThemeMode(value);
                  Navigator.pop(context);
                }
              },
            ),
            RadioListTile<ThemeMode>(
              title: const Text('시스템 설정'),
              value: ThemeMode.system,
              groupValue: current,
              onChanged: (value) {
                if (value != null) {
                  ref.read(themeModeProvider.notifier).setThemeMode(value);
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showRefreshDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('데이터 새로고침'),
        content: const Text(
          '기존 단어 및 예문 데이터를 삭제하고 새로 불러옵니다.\n\n'
          '학습 진행 상황은 유지됩니다.\n\n'
          '계속하시겠습니까?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('취소'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              _refreshData(context, ref);
            },
            child: const Text('새로고침'),
          ),
        ],
      ),
    );
  }

  void _refreshData(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => _RefreshProgressDialog(ref: ref),
    );
  }
}

class _RefreshProgressDialog extends ConsumerStatefulWidget {
  final WidgetRef ref;

  const _RefreshProgressDialog({required this.ref});

  @override
  ConsumerState<_RefreshProgressDialog> createState() =>
      _RefreshProgressDialogState();
}

class _RefreshProgressDialogState
    extends ConsumerState<_RefreshProgressDialog> {
  double _progress = 0;
  String _message = 'Starting...';
  bool _isComplete = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _startRefresh();
  }

  Future<void> _startRefresh() async {
    try {
      final isar = await widget.ref.read(isarProvider.future);
      final importService = JsonImportService(isar);

      await importService.refreshAllData(
        onProgress: (progress, message) {
          if (mounted) {
            setState(() {
              _progress = progress;
              _message = message;
            });
          }
        },
      );

      // Invalidate providers to refresh UI
      widget.ref.invalidate(wordCountProvider);
      widget.ref.invalidate(savedWordCountProvider);

      if (mounted) {
        setState(() {
          _isComplete = true;
          _message = '완료!';
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('데이터 새로고침'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_error != null) ...[
            Icon(Icons.error_outline, color: Colors.red, size: 48),
            const SizedBox(height: 16),
            Text('오류: $_error'),
          ] else ...[
            LinearProgressIndicator(value: _progress),
            const SizedBox(height: 16),
            Text(_message),
          ],
        ],
      ),
      actions: [
        if (_isComplete || _error != null)
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('확인'),
          ),
      ],
    );
  }
}
