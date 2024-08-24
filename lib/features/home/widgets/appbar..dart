import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('asset/images/home/appbar.png'),
        const SizedBox(width: 55),
        Image.asset('asset/images/home/Frame (1).png'),
        Text(
          '  Agrabad 435, Chittagong',
          style: Styles.text14.copyWith(color: ColorManager.darktGray),
        ),
        const SizedBox(width: 55),
        Image.asset('asset/images/home/Ellipse 4.png')
      ],
    );
  }
}
