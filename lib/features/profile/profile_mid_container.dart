import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';

class ProfileMidContainer extends StatelessWidget {
  const ProfileMidContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: ColorManager.mintGray.withOpacity(.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ], borderRadius: BorderRadius.circular(15), color: ColorManager.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Row(children: [
            const Icon(
              Icons.account_circle,
              color: ColorManager.minDarktGray,
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              'Account setting',
              style: Styles.text18.copyWith(color: ColorManager.minDarktGray),
            ),
            const Spacer(
              flex: 8,
            ),
            Image.asset(
              'asset/images/home/Frame (11).png',
              color: ColorManager.minDarktGray,
            ),
          ]),
        ));
  }
}
