import 'dart:math';
import 'package:flutter/material.dart';
import '../../../data/models/word_model.dart';
import '../../../data/models/sentence_model.dart';
import 'word_card_front.dart';
import 'word_card_back.dart';

class FlipCard extends StatefulWidget {
  final WordModel word;
  final SentenceModel? sentence;
  final bool isFlipped;
  final VoidCallback onFlip;

  const FlipCard({
    super.key,
    required this.word,
    this.sentence,
    required this.isFlipped,
    required this.onFlip,
  });

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _flipAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    _flipAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    if (widget.isFlipped) {
      _controller.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(FlipCard oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.word.word != oldWidget.word.word) {
      // Reset animation when word changes
      _controller.value = widget.isFlipped ? 1.0 : 0.0;
    } else if (widget.isFlipped != oldWidget.isFlipped) {
      if (widget.isFlipped) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onFlip,
      child: AnimatedBuilder(
        animation: _flipAnimation,
        builder: (context, child) {
          final angle = _flipAnimation.value * pi;
          final isFrontVisible = _flipAnimation.value < 0.5;

          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(angle),
            child: isFrontVisible
                ? WordCardFront(word: widget.word)
                : Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(pi),
                    child: WordCardBack(
                      word: widget.word,
                      sentence: widget.sentence,
                    ),
                  ),
          );
        },
      ),
    );
  }
}
