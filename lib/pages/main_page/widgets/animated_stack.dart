import 'package:flutter/material.dart';

class AnimatedHover extends StatefulWidget {
  final Widget child;

  const AnimatedHover({Key? key, required this.child}) : super(key: key);

  @override
  _AnimatedHoverState createState() => _AnimatedHoverState();
}

class _AnimatedHoverState extends State<AnimatedHover>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 + _controller.value;

    return InkWell(
      onTap: () {},
      onHover: (hovering) =>
          hovering ? _controller.forward() : _controller.reverse(),
      onFocusChange: (_) => _controller.reverse(),
      child: Transform.scale(
        scale: _scale,
        child: widget.child,
      ),
    );
  }
}
