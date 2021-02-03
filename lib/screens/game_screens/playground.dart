import 'dart:ui';

import 'package:flutter/src/gestures/tap.dart';
import 'package:flutter_rocketman/screens/base.dart';
import 'package:flutter_rocketman/screens/util/background.dart';

class PlayGround extends BaseWidget {
  Background _bg;

  PlayGround() {
    _bg = Background('playground/sky1.png');
  }

  @override
  void render(Canvas canvas) {
    //
    _bg.render(canvas);
  }

  @override
  void resize(Size size) {
    //
    _bg.resize(size);
  }

  @override
  void update() {
    // TODO: implement update
  }

  @override
  void onTapDown(TapDownDetails detail, Function fn) {}
}
