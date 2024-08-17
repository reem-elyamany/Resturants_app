import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorManager.white,
      body: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: TextButton(
              onPressed: () {

              },
              child: Text('Skip',style:Styles.text18 ,),
              
               ),
          )
        ],
      ),
    );
  }
}