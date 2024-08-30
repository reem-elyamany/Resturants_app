import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';

class DetailsAppbar extends StatelessWidget {
  const DetailsAppbar({super.key, this.text, this.icon, this.sizedBox});

  final String? text;
  final IconButton? icon;
  final SizedBox? sizedBox;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        color: ColorManager.green,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (icon != null) icon!,
            if (sizedBox != null) sizedBox!,
            Text(
              text ?? 'Booking History',
              style: Styles.text21.copyWith(color: ColorManager.white),
            ),
            const SizedBox(
              width: 70,
            )
          ],
        ),
      ),
    );
  }
}
