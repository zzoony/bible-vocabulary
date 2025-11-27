import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

enum SwipeDirection { left, right, up, down, none }

class SwipeableCard extends StatefulWidget {
  final Widget child;
  final VoidCallback onSwipeLeft;
  final VoidCallback onSwipeRight;
  final VoidCallback onSwipeUp;
  final VoidCallback onSwipeDown;

  const SwipeableCard({
    super.key,
    required this.child,
    required this.onSwipeLeft,
    required this.onSwipeRight,
    required this.onSwipeUp,
    required this.onSwipeDown,
  });

  @override
  State<SwipeableCard> createState() => _SwipeableCardState();
}

class _SwipeableCardState extends State<SwipeableCard>
    with SingleTickerProviderStateMixin {
  Offset _dragOffset = Offset.zero;
  SwipeDirection _currentDirection = SwipeDirection.none;

  late AnimationController _resetController;
  late Animation<Offset> _resetAnimation;

  static const double _swipeThreshold = 100.0;
  static const double _maxRotation = 0.1;
  static const double _velocityThreshold = 800.0;

  @override
  void initState() {
    super.initState();
    _resetController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _resetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _resetController,
      curve: Curves.easeOut,
    ));

    _resetController.addListener(() {
      setState(() {
        _dragOffset = _resetAnimation.value;
      });
    });
  }

  @override
  void dispose() {
    _resetController.dispose();
    super.dispose();
  }

  void _onPanStart(DragStartDetails details) {
    _resetController.stop();
  }

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      _dragOffset += details.delta;
      _currentDirection = _calculateDirection(_dragOffset);
    });
  }

  void _onPanEnd(DragEndDetails details) {
    final velocity = details.velocity.pixelsPerSecond;
    final shouldTrigger = _dragOffset.distance > _swipeThreshold ||
        velocity.distance > _velocityThreshold;

    if (shouldTrigger) {
      _triggerSwipeAction(_currentDirection);
    }
    _resetPosition();
  }

  SwipeDirection _calculateDirection(Offset offset) {
    if (offset.distance < 20) return SwipeDirection.none;

    if (offset.dx.abs() > offset.dy.abs()) {
      return offset.dx > 0 ? SwipeDirection.right : SwipeDirection.left;
    } else {
      return offset.dy > 0 ? SwipeDirection.down : SwipeDirection.up;
    }
  }

  void _triggerSwipeAction(SwipeDirection direction) {
    switch (direction) {
      case SwipeDirection.left:
        widget.onSwipeLeft();
        break;
      case SwipeDirection.right:
        widget.onSwipeRight();
        break;
      case SwipeDirection.up:
        widget.onSwipeUp();
        break;
      case SwipeDirection.down:
        widget.onSwipeDown();
        break;
      case SwipeDirection.none:
        break;
    }
  }

  void _resetPosition() {
    _resetAnimation = Tween<Offset>(
      begin: _dragOffset,
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _resetController,
      curve: Curves.easeOut,
    ));
    _resetController.reset();
    _resetController.forward();

    setState(() {
      _currentDirection = SwipeDirection.none;
    });
  }

  @override
  Widget build(BuildContext context) {
    final opacity = (_dragOffset.distance / _swipeThreshold).clamp(0.0, 1.0);

    return GestureDetector(
      onPanStart: _onPanStart,
      onPanUpdate: _onPanUpdate,
      onPanEnd: _onPanEnd,
      child: Transform.translate(
        offset: _dragOffset,
        child: Transform.rotate(
          angle: _dragOffset.dx / 500 * _maxRotation,
          child: Stack(
            children: [
              widget.child,
              _buildSwipeFeedbackOverlay(opacity),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSwipeFeedbackOverlay(double opacity) {
    if (opacity < 0.1 ||
        _currentDirection == SwipeDirection.left ||
        _currentDirection == SwipeDirection.right ||
        _currentDirection == SwipeDirection.none) {
      return const SizedBox.shrink();
    }

    Color overlayColor;
    IconData icon;
    String label;

    switch (_currentDirection) {
      case SwipeDirection.up:
        overlayColor = AppColors.swipeUpGreen;
        icon = Icons.check_circle_outline;
        label = '아는 단어';
        break;
      case SwipeDirection.down:
        overlayColor = AppColors.swipeDownBlue;
        icon = Icons.bookmark_outline;
        label = '저장';
        break;
      default:
        return const SizedBox.shrink();
    }

    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          color: overlayColor.withOpacity(opacity * 0.3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Opacity(
            opacity: opacity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, size: 48, color: overlayColor),
                const SizedBox(height: 8),
                Text(
                  label,
                  style: TextStyle(
                    color: overlayColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
