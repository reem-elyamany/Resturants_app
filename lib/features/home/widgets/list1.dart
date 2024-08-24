import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';

class List1 extends StatelessWidget {
  const List1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      width: 420,
      child: ListView.builder(
          padding: null,
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 33, horizontal: 5),
              child: Container(
                height: 192,
                width: 360,
                decoration: BoxDecoration(
                  //color: ColorManager.lightOrange,
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      ColorManager.orange,
                      ColorManager.lightOrange
                    ], // List of colors
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'asset/images/home/image 1.png',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Flash Offere',
                            style: Styles.text18
                                .copyWith(color: ColorManager.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'we are here with the best',
                            style: Styles.text14
                                .copyWith(color: ColorManager.white),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'deserts in town.',
                            style: Styles.text14
                                .copyWith(color: ColorManager.white),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'Order',
                                style: Styles.text16.copyWith(
                                  color: ColorManager.white,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Image.asset(
                        'asset/images/home/burger.png',
                        width: 181,
                        height: 90,
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
