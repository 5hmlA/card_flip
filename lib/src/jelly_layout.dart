import 'package:flutter/cupertino.dart';

class Jelly extends StatefulWidget {
  final Widget? child;
  final GestureTapCallback? onTap;

  const Jelly({Key? key, this.child, this.onTap});

  @override
  _JellyState createState() => _JellyState();
}

class _JellyState extends State<Jelly> with SingleTickerProviderStateMixin {
  late AnimationController _animationControl;
  late Animation<double> _scaleAnimation;
  final int ANI_DURATION = 100;

  @override
  void initState() {
    super.initState();
    _animationControl = AnimationController(vsync: this, duration: Duration(milliseconds: ANI_DURATION));
    _scaleAnimation = Tween(begin: 1.0, end: 0.8).animate(_animationControl);
  }

  @override
  void dispose() {
    _animationControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (downDetails) {
        _animationControl.forward();
      },
      onPointerCancel: (event) {
        _restoreScacle();
      },
      onPointerUp: (upDetails) {
        _restoreScacle();
        widget.onTap?.call();
      },
      child: AnimatedBuilder(
        animation: _animationControl,
        builder: (BuildContext context, Widget? child) {
          return Transform.scale(
            scale: _scaleAnimation.value,

            ///忽略 child的hitest 不响应点击
            // child: IgnorePointer(
            child: child!,
            // ),
          );
        },
        child: widget.child,
      ),
    );
  }

  void _restoreScacle() {
    if (_animationControl.isAnimating) {
      Future.delayed(Duration(milliseconds: (ANI_DURATION * (1 - _animationControl.value)).floor())).then((value) => _animationControl.reverse());
      return;
    }
    _animationControl.reverse();
  }
}
