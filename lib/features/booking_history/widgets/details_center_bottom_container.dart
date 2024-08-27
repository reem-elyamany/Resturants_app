import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/features/home/widgets/list3.dart';

class DetailsCenterBottomContainer extends StatelessWidget {
  const DetailsCenterBottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: ColorManager.mintGray.withOpacity(.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ], borderRadius: BorderRadius.circular(20), color: ColorManager.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'List other resturant',
                      style: Styles.text21.copyWith(color: Colors.black),
                    ),
                    Text(
                      'check the menu at this resturant',
                      style: Styles.text14,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'See All',
                      style: Styles.text16.copyWith(color: ColorManager.green),
                    ),
                    Icon(
                      size: 34,
                      Icons.chevron_right,
                      color: ColorManager.green,
                    )
                  ],
                )
              ],
            ),
          ),
          List3(
            buttonText: 'Check',
          ),
        ],
      ),
    );
  }
}
