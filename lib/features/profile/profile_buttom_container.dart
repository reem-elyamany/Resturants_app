import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';

class ProfileButtomContainer extends StatelessWidget {
  const ProfileButtomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Image.asset(
                  'asset/images/home/Frame 12.png',
                  color: ColorManager.darktGray,
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  'Language',
                  style:
                      Styles.text18.copyWith(color: ColorManager.minDarktGray),
                ),
                const Spacer(
                  flex: 6,
                ),
                const Icon(
                  size: 34,
                  Icons.chevron_right,
                  color: ColorManager.mintGray,
                ),
              ]),
              const SizedBox(
                height: 15,
              ),
              Row(children: [
                Image.asset(
                  'asset/images/home/Frame (10).png',
                  color: ColorManager.minDarktGray,
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  'Feedback',
                  style:
                      Styles.text18.copyWith(color: ColorManager.minDarktGray),
                ),
                const Spacer(
                  flex: 6,
                ),
                const Icon(
                  size: 34,
                  Icons.chevron_right,
                  color: ColorManager.mintGray,
                ),
              ]),
              const SizedBox(
                height: 15,
              ),
              Row(children: [
                Image.asset(
                  'asset/images/home/Frame 11.png',
                  color: ColorManager.minDarktGray,
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  'Feedback',
                  style:
                      Styles.text18.copyWith(color: ColorManager.minDarktGray),
                ),
                const Spacer(
                  flex: 6,
                ),
                const Icon(
                  size: 34,
                  Icons.chevron_right,
                  color: ColorManager.mintGray,
                ),
              ]),
              const SizedBox(
                height: 15,
              ),
              Row(children: [
                Image.asset(
                  'asset/images/home/Frame (9).png',
                  color: ColorManager.minDarktGray,
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  'New Version',
                  style:
                      Styles.text18.copyWith(color: ColorManager.minDarktGray),
                ),
                const Spacer(
                  flex: 6,
                ),
                const Icon(
                  size: 34,
                  Icons.chevron_right,
                  color: ColorManager.mintGray,
                ),
              ]),
            ],
          ),
        ));
  }
}
