import 'package:flutter/material.dart';

class GradientBackground extends StatefulWidget {
  final bool animated;
  const GradientBackground({
    super.key,
    this.animated = false,
  });

  @override
  _GradientBackgroundState createState() => _GradientBackgroundState();
}

class _GradientBackgroundState extends State<GradientBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (widget.animated)
          FadeTransition(
            opacity: _animation,
            child: _buildGradient(Alignment.topLeft, Alignment.bottomRight),
          )
        else
          _buildGradient(Alignment.topLeft, Alignment.bottomRight),
        if (widget.animated)
          FadeTransition(
            opacity: _animation,
            child: _buildGradient(Alignment.topRight, Alignment.bottomLeft),
          )
        else
          _buildGradient(Alignment.topRight, Alignment.bottomLeft),
        if (widget.animated)
          FadeTransition(
            opacity: _animation,
            child: _buildGradient(Alignment.bottomRight, Alignment.topLeft),
          )
        else
          _buildGradient(Alignment.bottomRight, Alignment.topLeft),
        if (widget.animated)
          FadeTransition(
            opacity: _animation,
            child: _buildGradient(Alignment.bottomLeft, Alignment.topRight),
          )
        else
          _buildGradient(Alignment.bottomLeft, Alignment.topRight),
      ],
    );
  }

  Widget _buildGradient(Alignment begin, Alignment end) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 14, 190, 128).withOpacity(0.3),
            Colors.transparent
          ],
          stops: const [0.0, 0.2, 0.4],
          begin: begin,
          end: end,
        ),
      ),
    );
  }
}
