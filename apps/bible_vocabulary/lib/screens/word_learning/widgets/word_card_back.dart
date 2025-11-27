import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../data/models/word_model.dart';
import '../../../data/models/sentence_model.dart';

class WordCardBack extends StatelessWidget {
  final WordModel word;
  final SentenceModel? sentence;

  const WordCardBack({
    super.key,
    required this.word,
    this.sentence,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkCardBackground : AppColors.lightCardBackground,
        borderRadius: BorderRadius.circular(20),
        boxShadow: isDark
            ? null
            : [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Korean meaning
            if (word.definitionKorean != null) ...[
              Text(
                word.definitionKorean!,
                style: AppTypography.koreanMeaning.copyWith(
                  color: isDark ? AppColors.darkText : AppColors.lightText,
                ),
              ),
              const SizedBox(height: 8),
            ],
            // Korean pronunciation
            if (word.koreanPronunciation != null) ...[
              Text(
                word.koreanPronunciation!,
                style: AppTypography.koreanPronunciation.copyWith(
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
              const SizedBox(height: 16),
            ],
            // Divider
            Divider(
              color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
            ),
            const SizedBox(height: 16),
            // Example sentence
            if (sentence != null) ...[
              // English sentence
              Text(
                '"${sentence!.text}"',
                style: AppTypography.bodyLarge.copyWith(
                  color: isDark ? AppColors.darkText : AppColors.lightText,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 12),
              // Korean translation
              Text(
                '"${sentence!.korean}"',
                style: AppTypography.bodyLarge.copyWith(
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
              const SizedBox(height: 12),
              // Bible reference
              Text(
                '- ${sentence!.ref}',
                style: AppTypography.bibleReference.copyWith(
                  color: AppColors.mint,
                ),
              ),
            ] else ...[
              Text(
                'No example sentence available',
                style: AppTypography.bodyLarge.copyWith(
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
