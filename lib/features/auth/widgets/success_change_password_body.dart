import 'package:flutter/material.dart';
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
          const Spacer(
            flex: 8,
          ),
          Image.asset('asset/images/auth/Success Icon.png'),
          Text(
            'Success',
            style: Styles.text25.copyWith(fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Congratulations your password has been changed,',
            style: Styles.text20.copyWith(fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const Spacer(
            flex: 4,
          ),
          CustomButton(
              text: 'Sign In',
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              }),
          const Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
