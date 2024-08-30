import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';

class DetailsCenterTopContainer extends StatelessWidget {
  const DetailsCenterTopContainer({super.key});

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tava Resturant',
              style: Styles.text25,
            ),
            Row(
              children: [
                Image.asset('asset/images/home/Frame (1).png'),
                Text(
                  'Kanzi Deiry, Taiger Pass,Chittagong',
                  style: Styles.text14,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            FadeInRightBig(
              child: Image.asset(
                'asset/images/home/Rectangle 387 (1).png',
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'asset/images/home/Frame (7).png',
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Open today',
                          style: Styles.text16
                              .copyWith(color: ColorManager.mintGray),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      '10:00 AM-12:00 PM',
                      style: Styles.text18,
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                        'asset/images/home/directions_black_24dp 1.png'),
                    Text(
                      'Visit the Resturant',
                      style:
                          Styles.text16.copyWith(color: ColorManager.lightBlue),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
