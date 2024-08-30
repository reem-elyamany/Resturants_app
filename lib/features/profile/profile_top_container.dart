import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';

class ProfileTopContainer extends StatelessWidget {
  const ProfileTopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: ColorManager.mintGray.withOpacity(.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ], borderRadius: BorderRadius.circular(20), color: ColorManager.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('asset/images/home/Ellipse 4.png'),
              Column(
                children: [
                  Text(
                    'Reem Mahmoud',
                    style: Styles.text18,
                  ),
                  Text(
                    'Reem@gmail.com',
                    style: Styles.text14,
                  ),
                ],
              ),
              const SizedBox(
                width: 50,
              ),
              const Icon(
                Icons.notifications_sharp,
              )
            ],
          ),
        ));
  }
}
