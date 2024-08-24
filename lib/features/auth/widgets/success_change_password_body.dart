import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';

class SuccessChangePasswordBody extends StatelessWidget {
  const SuccessChangePasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(
            flex: 8,
          ),
          Image.asset('asset/images/auth/Success Icon.png'),
          Text(
            'Success',
            style: Styles.text25.copyWith(fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Congratulations your password has been changed,',
            style: Styles.text20.copyWith(fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Spacer(
            flex: 4,
          ),
          CustomButton(
              text: 'Sign In',
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              }),
          Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
