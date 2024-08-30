import 'package:flutter/material.dart';
import 'package:resturant_app/core/helpers/validation.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';
import 'package:resturant_app/core/widgets/text_field.dart';

class ForgetPasswordBody extends StatefulWidget {
  const ForgetPasswordBody({super.key});

  @override
  State<ForgetPasswordBody> createState() => _ForgetPasswordBodyState();
}

class _ForgetPasswordBodyState extends State<ForgetPasswordBody> {
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 3,
            ),
            Text('Forget Password',
                style: Styles.text21.copyWith(color: Colors.black)),
            const SizedBox(height: 20),
            Text(
              'Enter your registered email below',
              style: Styles.text18.copyWith(color: ColorManager.mintGray),
            ),
            const SizedBox(height: 70),
            Text('Email address', style: Styles.text15),
            const SizedBox(
              height: 7,
            ),
            CustomTextFormField(
              controller: emailController,
              hintText: 'Eg nameemaile@emailkamu.com',
              keyboardType: TextInputType.emailAddress,
              validator: (value) => FormValidator.validateEmail(value),
            ),
            Row(
              children: [
                Text(
                  'Remember the password?',
                  style: Styles.text16.copyWith(color: ColorManager.mintGray),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    'Sign in',
                    style: Styles.text16.copyWith(color: ColorManager.green),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 10,
            ),
            CustomButton(
              text: 'Submit',
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, '/successScreen');
                  emailController.clear();
                }
                //  Navigator.pushNamed(context, '/successScreen');
              },
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
