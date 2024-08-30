import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/core/helpers/validation.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';
import 'package:resturant_app/core/widgets/text_field.dart';

class LoginTextfieldAndButton extends StatefulWidget {
  const LoginTextfieldAndButton({super.key});

  @override
  State<LoginTextfieldAndButton> createState() =>
      _LoginTextfieldAndButtonState();
}

class _LoginTextfieldAndButtonState extends State<LoginTextfieldAndButton> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Text('Email address', style: Styles.text18),
            const SizedBox(
              height: 7,
            ),
            CustomTextFormField(
              controller: emailController,
              hintText: 'Eg nameemaile@emailkamu.com',
              keyboardType: TextInputType.emailAddress,
              validator: (value) => FormValidator.validateEmail(value),
            ),
            const SizedBox(height: 15),
            Text('Password', style: Styles.text18),
            const SizedBox(
              height: 7,
            ),
            CustomTextFormField(
              controller: passwordController,
              obscure: isObsecureText,
              hintText: 'Enter your password',
              //keyboardType: TextInputType.visiblePassword,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObsecureText = !isObsecureText;
                  });
                },
                child: Icon(
                  isObsecureText ? Icons.visibility_off : Icons.visibility,
                  color: ColorManager.green,
                ),
              ),
              validator: (value) => FormValidator.validatePassword(value),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/forgetPassword');
              },
              child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  'Forgot Password?',
                  style: Styles.text16.copyWith(color: ColorManager.green),
                ),
              ),
            ),
            FadeInDown(
              child: CustomButton(
                color: ColorManager.lightGray,
                textColor: ColorManager.mintGray,
                width: 270,
                height: 50,
                text: 'Login',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/allHomeScreens');
                    emailController.clear();
                    passwordController.clear();
                  }
                },
              ),
            ),
            const Divider(
              color: ColorManager.mintGray,
              thickness: .5,
              indent: 70,
              endIndent: 70,
            ),
            FadeInUp(
              child: CustomButton(
                color: ColorManager.lightGray,
                textColor: ColorManager.darktGray,
                width: 270,
                height: 50,
                image: Image.asset('asset/images/auth/ic_google.png'),
                text: 'Login with Google',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/home');
                    emailController.clear();
                    passwordController.clear();
                  }
                },
              ),
            ),
          ],
        ));
  }
}
