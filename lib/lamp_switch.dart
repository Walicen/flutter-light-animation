import 'package:flutter/material.dart';

class LampSwitch extends StatelessWidget {
  final Function onTap;
  final bool isSwitchOn;
  final double screenWidth, screenHeight;
  final Duration animationDuration;
  final Color onColor, offColor;
  final Color toggleOnColor, toggleOffColor, color;

  const LampSwitch(
      {Key key,
      this.onTap,
      this.isSwitchOn,
      this.screenWidth,
      this.screenHeight,
      this.animationDuration,
      this.onColor,
      this.offColor,
      this.toggleOnColor,
      this.toggleOffColor,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: screenHeight * 0.31,
      width: 30,
      left: screenWidth * 0.5 - 15,
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: <Widget>[
            AnimatedContainer(
              duration: animationDuration,
              width: 30,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: isSwitchOn ? onColor : offColor,
              ),
            ),
            AnimatedPositioned(
              duration: animationDuration,
              left: 0,
              right: 0,
              top: isSwitchOn ? 42 : 4,
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                width: 24,
                height: 24,
              ),
            )
          ],
        ),
      ),
    );
  }
}
