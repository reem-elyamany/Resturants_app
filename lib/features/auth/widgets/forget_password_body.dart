import 'package:animate_do/animate_do.dart';
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
            FadeInDown(
              child: Text('Forget Password',
                  style: Styles.text21.copyWith(color: Colors.black)),
            ),
            const SizedBox(height: 20),
            FadeInDown(
              child: Text(
                'Enter your registered email below',
                style: Styles.text18.copyWith(color: ColorManager.mintGray),
              ),
            ),
            FadeInDown(child: const SizedBox(height: 70)),
            FadeInDown(child: Text('Email address', style: Styles.text15)),
            const SizedBox(
              height: 7,
            ),
            FadeInDown(
              child: CustomTextFormField(
                controller: emailController,
                hintText: 'Eg nameemaile@emailkamu.com',
                keyboardType: TextInputType.emailAddress,
                validator: (value) => FormValidator.validateEmail(value),
              ),
            ),
            FadeInDown(
              child: Row(
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
            ),
            const Spacer(
              flex: 10,
            ),
            FadeInUp(
              child: CustomButton(
                text: 'Submit',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/successScreen');
                    emailController.clear();
                  }
                  //  Navigator.pushNamed(context, '/successScreen');
                },
              ),
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
