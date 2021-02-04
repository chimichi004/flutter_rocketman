import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/src/gestures/tap.dart';
import 'dart:ui';

import 'package:flutter_rocketman/screens/base.dart';

class Player extends BaseWidget {
  SpriteComponent _player;

  Player() {
    _player = SpriteComponent.fromSprite(0, 0, Sprite('player/rocketman.png'));
  }
  @override
  void onTapDown(TapDownDetails detail, Function fn) {
    //
    _player.x = _player.x + 50;
  }

  @override
  void render(Canvas canvas) {
    //
    canvas.save();
    _player.render(canvas);
    canvas.restore();
  }

  @override
  void resize(Size size) {
    // TODO: implement resize
    _player.x = 0;
    _player.y = (size.height - size.height * 0.25) / 2;
    _player.width = size.width * 0.15;
    _player.height = size.height * 0.25;
  }

  @override
  void update() {
    // TODO: implement update
  }
}
