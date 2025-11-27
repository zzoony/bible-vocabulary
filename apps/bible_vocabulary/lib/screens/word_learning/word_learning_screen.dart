import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../../core/utils/responsive.dart';
import '../../providers/learning_session_provider.dart';
import '../../providers/word_providers.dart';
import 'widgets/flip_card.dart';
import 'widgets/swipeable_card.dart';

class WordLearningScreen extends ConsumerStatefulWidget {
  const WordLearningScreen({super.key});

  @override
  ConsumerState<WordLearningScreen> createState() => _WordLearningScreenState();
}

class _WordLearningScreenState extends ConsumerState<WordLearningScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(learningSessionProvider.notifier).initSession();
    });
  }

  String _getSortLabel(SortOption option) {
    switch (option) {
      case SortOption.frequency:
        return '빈도순';
      case SortOption.alphabetical:
        return '알파벳순';
      case SortOption.random:
        return '랜덤';
    }
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(learningSessionProvider);
    final sentenceAsync = ref.watch(currentSentenceProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final padding = Responsive.screenPadding(context);

    if (session.words.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('단어 학습'),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final word = session.currentWord;
    if (word == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('단어 학습'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                size: 80,
                color: AppColors.swipeUpGreen,
              ),
              const SizedBox(height: 16),
              const Text(
                '모든 단어를 학습했습니다!',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('${session.currentIndex + 1} / ${session.words.length}'),
        actions: [
          PopupMenuButton<SortOption>(
            onSelected: (option) {
              ref.read(sortOptionProvider.notifier).setOption(option);
              ref.read(learningSessionProvider.notifier).initSession();
            },
            itemBuilder: (context) {
              final current = ref.read(sortOptionProvider);
              return [
                CheckedPopupMenuItem(
                  value: SortOption.frequency,
                  checked: current == SortOption.frequency,
                  child: const Text('빈도순'),
                ),
                CheckedPopupMenuItem(
                  value: SortOption.alphabetical,
                  checked: current == SortOption.alphabetical,
                  child: const Text('알파벳순'),
                ),
                CheckedPopupMenuItem(
                  value: SortOption.random,
                  checked: current == SortOption.random,
                  child: const Text('랜덤'),
                ),
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    _getSortLabel(ref.watch(sortOptionProvider)),
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.arrow_drop_down, size: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Progress indicator
            LinearProgressIndicator(
              value: session.progress,
              backgroundColor:
                  isDark ? AppColors.darkSurface : AppColors.cardBeigeDark,
              valueColor: AlwaysStoppedAnimation(
                isDark ? AppColors.mint : AppColors.cardTerracotta,
              ),
            ),
            const SizedBox(height: 8),
            // Card area
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: Responsive.cardHeight(context),
                    ),
                    child: SwipeableCard(
                      onSwipeLeft: () {
                        ref.read(learningSessionProvider.notifier).nextWord();
                      },
                      onSwipeRight: () {
                        ref.read(learningSessionProvider.notifier).previousWord();
                      },
                      onSwipeUp: () {
                        ref.read(learningSessionProvider.notifier).markAsKnown();
                        _showSnackBar(
                          context,
                          '아는 단어로 표시됨',
                          isDark ? AppColors.mint : AppColors.cardBrown,
                        );
                      },
                      onSwipeDown: () {
                        ref.read(learningSessionProvider.notifier).saveToVocabulary();
                        _showSnackBar(
                          context,
                          '단어장에 저장됨',
                          isDark ? AppColors.mint : AppColors.cardTerracotta,
                        );
                      },
                      child: sentenceAsync.when(
                        data: (sentence) => FlipCard(
                          word: word,
                          sentence: sentence,
                          isFlipped: session.isCardFlipped,
                          onFlip: () {
                            ref.read(learningSessionProvider.notifier).flipCard();
                            ref.read(learningSessionProvider.notifier).recordView();
                          },
                        ),
                        loading: () => FlipCard(
                          word: word,
                          sentence: null,
                          isFlipped: session.isCardFlipped,
                          onFlip: () {
                            ref.read(learningSessionProvider.notifier).flipCard();
                          },
                        ),
                        error: (_, __) => FlipCard(
                          word: word,
                          sentence: null,
                          isFlipped: session.isCardFlipped,
                          onFlip: () {
                            ref.read(learningSessionProvider.notifier).flipCard();
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Hint row
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildHintItem(
                    icon: Icons.arrow_upward,
                    label: '아는 단어',
                    isDark: isDark,
                  ),
                  _buildHintItem(
                    icon: Icons.touch_app,
                    label: '탭하여 뒤집기',
                    isDark: isDark,
                  ),
                  _buildHintItem(
                    icon: Icons.arrow_downward,
                    label: '저장하기',
                    isDark: isDark,
                  ),
                ],
              ),
            ),
            // Action buttons
            Padding(
              padding: EdgeInsets.all(padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildActionButton(
                    icon: Icons.bookmark_add_outlined,
                    label: '저장',
                    color: isDark ? AppColors.mint : AppColors.cardTerracotta,
                    onTap: () {
                      ref
                          .read(learningSessionProvider.notifier)
                          .saveToVocabulary();
                      _showSnackBar(
                        context,
                        '단어장에 저장됨',
                        isDark ? AppColors.mint : AppColors.cardTerracotta,
                      );
                    },
                  ),
                  _buildActionButton(
                    icon: Icons.check_circle_outline,
                    label: '알아요',
                    color: isDark ? AppColors.mint : AppColors.cardBrown,
                    onTap: () {
                      ref
                          .read(learningSessionProvider.notifier)
                          .markAsKnown();
                      _showSnackBar(
                        context,
                        '아는 단어로 표시됨',
                        isDark ? AppColors.mint : AppColors.cardBrown,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Widget _buildHintItem({
    required IconData icon,
    required String label,
    required bool isDark,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 20,
          color: isDark
              ? AppColors.darkTextSecondary.withOpacity(0.6)
              : AppColors.cardBrown.withOpacity(0.5),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            color: isDark
                ? AppColors.darkTextSecondary.withOpacity(0.6)
                : AppColors.cardBrownLight,
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color, size: 20),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
