import 'dart:ui';

import 'package:flutter_rocketman/screens/base.dart';
import 'package:flutter_rocketman/screens/util/background.dart';

class MainMenu extends BaseWidget {
  //Background from background widget
  Background _background;

  //provide a constructor
  MainMenu() {
    _background = Background('menu/background.png');
  }

  @override
  void render(Canvas canvas) {
    // render the _background
    _background?.render(canvas);
  }

  @override
  void resize(Size size) {
    // resize the _background
    _background?.resize(size);
  }

  @override
  void update() {
    // update the _background
    _background?.update();
  }
}
