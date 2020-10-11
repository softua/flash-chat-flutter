import 'package:flutter/material.dart';

mixin BackgroundAnimationMixin<T extends StatefulWidget>
    on SingleTickerProviderStateMixin<T> {
  AnimationController controller;
  Animation<Color> backgroundAnimation;

  void backgroundAnimationInit() {
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    backgroundAnimation = ColorTween(
      begin: Colors.blueGrey,
      end: Colors.white,
    ).animate(controller);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  void backgroundAnimationDispose() {
    controller.dispose();
  }
}
