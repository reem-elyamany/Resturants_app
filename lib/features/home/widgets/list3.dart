import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';

class List3 extends StatelessWidget {
  const List3(
      {super.key, this.buttonText, this.image, this.text, this.hintText});

  final String? buttonText;
  final Image? image;
  final String? text;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SizedBox(
        width: 430,
        height: 550,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 3,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Card(
                elevation: 3,
                // shadowColor: ColorManager.white,
                color: ColorManager.white,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: image ??
                                Image.asset(
                                  'asset/images/home/Rectangle 387.png',
                                  fit: BoxFit.cover,
                                ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(text ?? 'Amborosia Hotel ',
                                style: Styles.text18),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Image.asset('asset/images/home/Frame (1).png'),
                                Text(
                                  hintText ?? 'Kanzi Deiry, Taiger Pass',
                                  style: Styles.text14,
                                ),
                              ],
                            ),
                          ],
                        ),
                        CustomButton(
                          width: 100,
                          height: 35,
                          text: buttonText ?? 'Book',
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/bookingHistoryScreen');
                          },
                        )
                      ],
                    )));
          },
        ),
      ),
    );
  }
}
