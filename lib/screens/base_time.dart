import 'dart:ui';

import 'package:flutter/cupertino.dart';

// Abstract method (does not have a body)
abstract class BaseTimeWidget {
// Regular method
  void resize(Size size);

  void render(Canvas canvas);

  void update(double t);

  void onTapDown(TapDownDetails detail, Function fn);
}
