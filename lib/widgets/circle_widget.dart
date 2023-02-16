import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final double radius;
  final Color color;

  const CircleWidget({
    Key? key,
    required this.color,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
