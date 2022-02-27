import 'package:flutter/widgets.dart';

class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double padtop = 0;
  static double appbarsize = 0;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      screenWidth = constraints.maxWidth;
      screenHeight = constraints.maxHeight;
    } else {
      screenWidth = constraints.maxHeight;
      screenHeight = constraints.maxWidth;
    }
  }
}
