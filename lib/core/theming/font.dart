import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';

abstract class Styles {
  static TextStyle text14 = const TextStyle(
    color: ColorManager.mintGray,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle text12 = const TextStyle(
    color: ColorManager.darktGray,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static TextStyle text25 = const TextStyle(
    color: ColorManager.darktGray,
    fontSize: 25,
    fontWeight: FontWeight.w700,
  );
  static TextStyle text23 = const TextStyle(
    color: ColorManager.mintGray,
    fontSize: 23,
    fontWeight: FontWeight.w700,
  );

  static TextStyle text16 = const TextStyle(
    color: ColorManager.white,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle text18 = const TextStyle(
    color: ColorManager.darktGray,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}
