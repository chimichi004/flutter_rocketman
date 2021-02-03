import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:flutter_rocketman/screens/base.dart';

class Background extends BaseWidget {
  /// A spray component is a flame object which can render a spite
  /// on a certain position,scale up or rotate it defends on
  SpriteComponent _bgSprite;

  /// Create a Background constructor to initialize the sprite component
  /// based on the image source and adding heigh and width
  Background(String src) {
    _bgSprite = SpriteComponent.fromSprite(0, 0, Sprite(src));
  }
  @override
  void render(Canvas canvas) {
    _bgSprite.render(canvas);
  }

  @override
  void resize(Size size) {
    _bgSprite.width = size.width;
    _bgSprite.height = size.height;
  }

  @override
  void update() {}
}
