import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flutter_rocketman/screens/base.dart';
import 'main_menu.dart';

ScreenManager screenManager = ScreenManager();

class ScreenManager extends Game {
  //Add the object BasedWidget main screen
  BaseWidget _mainScreen;
  Function _fn;
  Size size = Size(0, 0);

  ScreenManager() {
    _fn = _init;
  }

  @override
  void resize(Size size) {
    this.size = size; //For later usage
    _mainScreen?.resize(size); //If initialize? will resize
  }

  @override
  void render(Canvas canvas) {
    //If initialize? will render
    _mainScreen?.render(canvas);
  }

  @override
  void update(double t) {
    ///If initialize? will update
    //_mainScreen?.update();
    /// Executes the function to which _fn points
    _fn();
  }

  void _init() {
    //change the _fn varialbe to point
    _fn = _update;
    //construct the main screen
    _mainScreen = new MainMenu();
  }

  void _update() {
    // call the update method on the main screen
    _mainScreen?.update();
  }
}
