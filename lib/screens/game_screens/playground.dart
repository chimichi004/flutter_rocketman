import 'dart:ui';

import 'package:flutter/src/gestures/tap.dart';
import 'package:flutter_rocketman/screens/base.dart';
import 'package:flutter_rocketman/screens/base_time.dart';
import 'package:flutter_rocketman/screens/game/enemies/enemies_factory.dart';
import 'package:flutter_rocketman/screens/game/enemies/rocket.dart';
import 'package:flutter_rocketman/screens/game/player.dart';
import 'package:flutter_rocketman/screens/util/background.dart';
import 'package:flutter_rocketman/screens/util/dynamic_background.dart';

class PlayGround extends BaseTimeWidget {
  BaseWidget _bg;
  Player _player;
  //Rocket _rocket;

  PlayGround() {
    _bg = DynamicBackground(5, 'playground/sky.png');
    _player = Player();
    //_rocket = Rocket();
    enemiesFactory.reset();
  }

  @override
  void render(Canvas canvas) {
    _bg.render(canvas);
    // _rocket.render(canvas);
    _player.render(canvas);
    enemiesFactory.render(canvas);
  }

  @override
  void resize(Size size) {
    _bg.resize(size);
    //_rocket.resize(size);
    _player.resize(size);
    enemiesFactory.resize(size);
  }

  @override
  void update(double t) {
    //_rocket.update(t);
    _player.update(t);
    _bg.update();
    enemiesFactory.update(t);
  }

  @override
  void onTapDown(TapDownDetails detail, Function fn) {
    _player.onTapDown(detail, () {});
    enemiesFactory.onTapDown(detail, fn);
  }
}
