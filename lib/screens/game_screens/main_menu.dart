import 'dart:ui';

import 'package:flutter/src/gestures/tap.dart';
import 'package:flutter_rocketman/screens/base.dart';
import 'package:flutter_rocketman/screens/base_time.dart';
import 'package:flutter_rocketman/screens/game_screens/screen_manager.dart';
import 'package:flutter_rocketman/screens/game_screens/screen_state.dart';
import 'package:flutter_rocketman/screens/util/background.dart';
import 'package:flutter_rocketman/screens/util/controller.dart';

class MainMenu extends BaseTimeWidget {
  Background _background;
  BaseWidget _startButton;
  BaseWidget _logo;

  //provide a constructor
  MainMenu() {
    _background = Background('menu/sky1.png');

    _startButton = Controller(0.35, 0.5, 0.15, 0.3, 'menu/play.png');
    _logo = Controller(0.35, 0.07, 0.4, 0.3, 'menu/my-face.jpg');
  }

  @override
  void render(Canvas canvas) {
    // render the images/logos
    _background?.render(canvas);
    _startButton?.render(canvas);
    _logo?.render(canvas);
  }

  @override
  void resize(Size size) {
    // resize the _background
    _background?.resize(size);
    _startButton?.resize(size);
    _logo?.resize(size);
  }

  @override
  void update(double t) {
    // update the _background
    _background?.update();
    _startButton?.update();
    _logo?.update();
  }

  @override
  void onTapDown(TapDownDetails detail, Function fn) {
    _startButton.onTapDown(detail, () {
      screenManager.switchScreen(ScreenState.kPlayScreen);
    });
  }
}
