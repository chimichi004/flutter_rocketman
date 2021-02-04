import 'dart:ui';

import 'package:flutter_rocketman/screens/base_time.dart';

abstract class BaseEnemy extends BaseTimeWidget {
  bool isDead();

  void hit();

  bool overlaps(Rect rect);
}
