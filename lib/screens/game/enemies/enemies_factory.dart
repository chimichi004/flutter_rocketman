import 'package:flutter/src/gestures/tap.dart';
import 'dart:ui';

import 'package:flutter_rocketman/screens/base_time.dart';
import 'package:flutter_rocketman/screens/game/enemies/base_enemy.dart';
import 'package:flutter_rocketman/screens/game/enemies/rocket.dart';

EnemiesFactory enemiesFactory = EnemiesFactory();

class EnemiesFactory {
  List<BaseEnemy> enemies;
  double _time = 0;
  Size _size = Size(0, 0);

  double _rocketSpeed = 5; //spawning added time
  double _rocketThreshold = 5; //spawning threshold time

  EnemiesFactory() {
    enemies = List<BaseEnemy>();
  }
  void reset() {}
  @override
  void onTapDown(TapDownDetails detail, Function fn) {
    // TODO: implement onTapDown
  }

  @override
  void render(Canvas canvas) {
    for (var e in enemies) e.render(canvas);
  }

  @override
  void resize(Size size) {
    _size = size;
    for (var e in enemies) e.resize(size);
  }

  @override
  void update(double t) {
    // update
    _time += t;
    for (var e in enemies) e.update(t);

    //cleanup
    for (int i = enemies.length - 1; i >= 0; i--) {
      if (enemies.elementAt(i).isDead()) {
        enemies.removeAt(i);
      }
    }

    //spawning
    _spawnRocket();
  }

  void _spawnRocket() {
    if (_time > _rocketThreshold) {
      _time -= 1;
      //if (enemies.length < 2) {
      Rocket r = Rocket();
      r.resize(_size);
      enemies.add(r);
      _rocketThreshold += _rocketSpeed;
      //}
    }
  }
}
