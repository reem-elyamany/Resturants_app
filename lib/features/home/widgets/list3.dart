import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';

class List3 extends StatelessWidget {
  const List3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: 400,
        height: 600,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 7,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Card(
                elevation: 20,
                // shadowColor: ColorManager.white,
                color: ColorManager.white,
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              'asset/images/home/Rectangle 387.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text('Amborosia Hotel &Resturant',
                                style: Styles.text18),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Image.asset('asset/images/home/Frame (1).png'),
                                Text(
                                  'Kanzi Deiry, Taiger Pass',
                                  style: Styles.text14,
                                ),
                              ],
                            ),
                            CustomButton(
                              width: 120,
                              height: 35,
                              text: 'Book',
                              onPressed: () {},
                            )
                          ],
                        )
                      ],
                    )));
          },
        ),
      ),
    );
  }
}
