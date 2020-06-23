import 'package:flutter/material.dart';

class LampHangerRope extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color color;

  const LampHangerRope({Key key, this.screenWidth, this.screenHeight, @required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth * 0.2,
      child: Container(
        color: color,
        height: screenHeight * 0.15,
        width: 15,
      ),
    );
  }
}
