import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';
import 'package:resturant_app/features/auth/widgets/terms_and_condition.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('asset/images/auth/Order Success.png'),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Welcome',
              style: Styles.text25,
            ),
            Text(
              'Before enjoying Foodmedia services\n Please register first',
              style: Styles.text14,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 100,
            ),
            FadeInDown(
              child: CustomButton(
                text: 'Create Account',
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
              ),
            ),
            FadeInUp(
              child: CustomButton(
                text: 'Login',
                textColor: ColorManager.green,
                color: ColorManager.lightGreen,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ),
            const TermsAndConditionsText()
          ],
        ),
      ),
    );
  }
}
