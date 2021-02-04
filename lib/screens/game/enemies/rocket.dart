import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/src/gestures/tap.dart';
import 'dart:ui';

import 'package:flutter_rocketman/screens/base.dart';
import 'package:flutter_rocketman/screens/base_time.dart';
import 'package:flutter_rocketman/screens/game/enemies/base_enemy.dart';

class Rocket extends BaseEnemy {
  SpriteComponent _rocket;
  double _x;
  Size _size = Size(0, 0);
  bool _dead = false;

  Rocket() {
    _rocket =
        SpriteComponent.fromSprite(0, 0, Sprite('enemies/evil_viking.png'));
  }
  @override
  void onTapDown(TapDownDetails detail, Function fn) {
    // TODO: implement onTapDown
  }

  @override
  void render(Canvas canvas) {
    canvas.save();
    _rocket.x = _x;
    _rocket.render(canvas);
    canvas.restore();
  }

  @override
  void resize(Size size) {
    _size = size;

    _rocket.width = size.width * 0.12;
    _rocket.height = size.height * 0.08;

    _rocket.y = size.height / 2;
    _x = size.width + _rocket.width;
  }

  @override
  void update(double t) {
    _x -= t * _size.width / 2;

    // if (_x < -_rocket.width) _x = _size.width + _rocket.width;
  }

  @override
  bool isDead() {
    // TODO: implement isDead
    return _x < -_rocket.width || _dead;
  }

  @override
  void hit() {
    _dead = true;
  }

  @override
  bool overlaps(Rect rect) {
    return _rocket.toRect().overlaps(rect);
  }
}
