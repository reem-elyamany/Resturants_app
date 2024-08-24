import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';

class List2 extends StatelessWidget {
  const List2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 420,
      height: 280,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
              elevation: 20,
              // shadowColor: ColorManager.white,
              color: ColorManager.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 180,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          'asset/images/home/image 3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Chicken Biryani', style: Styles.text25),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Image.asset('asset/images/home/Frame (1).png'),
                        Text(
                          'Amborosia Hotel &',
                          style: Styles.text14,
                        ),
                      ],
                    ),
                    Text(
                      '    Resturant',
                      style: Styles.text14,
                    ),
                  ],
                ),
              ));
        },
      ),
    );
 
 
  }
}
