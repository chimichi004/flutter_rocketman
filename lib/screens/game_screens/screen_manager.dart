import 'dart:async';
import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flame/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rocketman/screens/base.dart';
import 'package:flutter_rocketman/screens/game_screens/playground.dart';
import 'package:flutter_rocketman/screens/game_screens/screen_state.dart';
import 'main_menu.dart';

ScreenManager screenManager = ScreenManager();

class ScreenManager extends Game with TapDetector {
  Function _fn;
  ScreenState _screenState;

  //Add the object BasedWidget main screen
  BaseWidget _mainScreen;
  BaseWidget _playScreen;

  Size size = Size(0, 0);

  ScreenManager() {
    _fn = _init;
    _screenState = ScreenState.kMenuScreen;
  }

  @override
  void resize(Size size) {
    this.size = size; //For later usage
    _mainScreen?.resize(size); //If initialize? will resize
  }

  @override
  void render(Canvas canvas) {
    //If initialize? will render
    _getActiveScreen()?.render(canvas);
  }

  @override
  void update(double t) {
    ///If initialize? will update
    //_mainScreen?.update();
    /// Executes the function to which _fn points
    _fn();
  }

  void _init() async {
    //change the _fn varialbe to point
    _fn = _update;
    //construct the main screen
    _mainScreen = new MainMenu();

    Util flameUtils = Util();
    await flameUtils.fullScreen();
    await flameUtils.setOrientation(DeviceOrientation.landscapeLeft);
  }

  void _update() {
    // call the update method on the main screen
    _getActiveScreen()?.update();
  }

  void onTapDown(TapDownDetails details) {
    _getActiveScreen()?.onTapDown(details, () {});
    print("Tapped!");
    print("Tapperwerweewrwewerweed!");
  }

  BaseWidget _getActiveScreen() {
    switch (_screenState) {
      case ScreenState.kMenuScreen:
        return _mainScreen;
      case ScreenState.kPlayScreen:
        return _playScreen;
      default:
        return _mainScreen;
    }
  }

  void switchScreen(ScreenState newScreen) {
    switch (newScreen) {
      case ScreenState.kMenuScreen:
        _mainScreen = MainMenu();
        _mainScreen.resize(size);
        Timer(Duration(milliseconds: 100), () {
          _screenState = newScreen;
        });
        break;
      case ScreenState.kPlayScreen:
        _playScreen = PlayGround();
        _playScreen.resize(size);
        Timer(Duration(milliseconds: 100), () {
          _screenState = newScreen;
        });
        break;
    }
  }
}
