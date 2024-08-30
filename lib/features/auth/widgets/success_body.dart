import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';

class SuccessBody extends StatelessWidget {
  const SuccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              'Please check your email for create a new password',
              style: Styles.text20.copyWith(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cant get email?',
                  style: Styles.text20.copyWith(fontWeight: FontWeight.w900),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    ' Resubmit',
                    style: Styles.text20.copyWith(
                        color: ColorManager.green, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 4,
            ),
            FadeInDown(
              child: CustomButton(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/changePassword');
                  }),
            ),
            const SizedBox(
              height: 5,
            ),
            FadeInUp(
              child: CustomButton(
                  text: 'Back Email',
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
