import 'dart:ui';

// Abstract method (does not have a body)
abstract class BaseWidget {
// Regular method
  void resize(Size size);

  void render(Canvas canvas);

  void update();
}
