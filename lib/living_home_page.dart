import 'package:flutter/material.dart';
import 'package:light_animation/colors.dart';
import 'package:light_animation/lamp.dart';
import 'package:light_animation/lamp_hanger_rope.dart';
import 'package:light_animation/lamp_switch.dart';
import 'package:light_animation/lamp_switch_rope.dart';
import 'package:light_animation/light.dart';

final animationDuration = const Duration(milliseconds: 500);

class LivingHomePage extends StatefulWidget {
  @override
  _LivingHomePageState createState() => _LivingHomePageState();
}

class _LivingHomePageState extends State<LivingHomePage> {
  bool _isSwicthOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          LampHangerRope(
            color: darkGrey,
            screenHeight: MediaQuery.of(context).size.height,
            screenWidth: MediaQuery.of(context).size.width,
          ),
          Lamp(
            color: darkGrey,
            screenHeight: MediaQuery.of(context).size.height,
            screenWidth: MediaQuery.of(context).size.width,
            isSwitchOn: _isSwicthOn,
            onColor: onColor,
            offColor: offColor,
          ),
          Light(
            color: darkGrey,
            screenHeight: MediaQuery.of(context).size.height,
            screenWidth: MediaQuery.of(context).size.width,
            isSwitchOn: _isSwicthOn,
            gradientColor: onColor,
            animationDuration: animationDuration,
          ),
          LampSwitch(
            color: darkGrey,
            onColor: onColor,
            offColor: offColor,
            screenHeight: MediaQuery.of(context).size.height,
            screenWidth: MediaQuery.of(context).size.width,
            isSwitchOn: _isSwicthOn,
            animationDuration: animationDuration,
            onTap: () {
              setState(() {
                _isSwicthOn = !_isSwicthOn;
              });
            },
          ),
          LampSwitchRope(
            color: darkGrey,
            screenHeight: MediaQuery.of(context).size.height,
            screenWidth: MediaQuery.of(context).size.width,
            isSwitchOn: _isSwicthOn,
            animationDuration: animationDuration,
          ),
        ],
      ),
    );
  }
}
