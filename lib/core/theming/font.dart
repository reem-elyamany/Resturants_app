import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';

abstract class Styles {
  static TextStyle text14 = const TextStyle(
    color: ColorManager.lightGray,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle text30 = const TextStyle(
    color: ColorManager.darktGray,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
}
