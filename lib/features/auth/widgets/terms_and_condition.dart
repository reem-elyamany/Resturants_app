import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging in or registering, you have agree to',
            style: Styles.text12,
          ),
          TextSpan(
            text: ' The Terms & Conditions',
            style: Styles.text12.copyWith(color: ColorManager.green),
          ),
          TextSpan(
            text: ' and',
            style: Styles.text12,
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: Styles.text12.copyWith(color: ColorManager.green),
          ),
        ],
      ),
    );
  }
}
