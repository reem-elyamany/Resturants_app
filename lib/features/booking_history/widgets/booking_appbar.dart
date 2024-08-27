import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';

class BookingAppbar extends StatelessWidget {
  const BookingAppbar({super.key, this.text, this.icon, this.sizedBox});

  final String? text;
  final IconButton? icon;
  final SizedBox? sizedBox;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        color: ColorManager.green,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon!,
            if (sizedBox != null) sizedBox!,
            Text(
              text ?? 'Booking History',
              style: Styles.text21.copyWith(color: ColorManager.white),
            ),
          ],
        ),
      ),
    );
  }
}
