import 'package:flutter/material.dart';

extension ScreenUtils on BuildContext {
  double screenHeight({percent = 1}) =>
      MediaQuery.of(this).size.height * percent;

  double screenWidth({percent = 1}) => MediaQuery.of(this).size.width * percent;
}
