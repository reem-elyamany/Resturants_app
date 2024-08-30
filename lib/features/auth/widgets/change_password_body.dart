import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/core/helpers/validation.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';
import 'package:resturant_app/core/widgets/text_field.dart';

class ChangePasswordBody extends StatefulWidget {
  const ChangePasswordBody({super.key});

  @override
  State<ChangePasswordBody> createState() => _ChangePasswordBodyState();
}

class _ChangePasswordBodyState extends State<ChangePasswordBody> {
  final passwordController = TextEditingController();
  bool isObsecureText = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            FadeInDown(
              child: Text(
                'Change New Password',
                style: Styles.text21.copyWith(color: ColorManager.darktGray),
              ),
            ),
            FadeInDown(
              child: Text('Enter your registered email below',
                  style: Styles.text18.copyWith(color: ColorManager.mintGray)),
            ),
            const Spacer(
              flex: 1,
            ),
            FadeInDown(
              child: Text('New Password',
                  style: Styles.text16.copyWith(color: ColorManager.mintGray)),
            ),
            const SizedBox(
              height: 7,
            ),
            FadeInDown(
              child: CustomTextFormField(
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
            ),
            const SizedBox(
              height: 10,
            ),
            FadeInDown(
              child: Text('Confarm Password',
                  style: Styles.text16.copyWith(color: ColorManager.mintGray)),
            ),
            const SizedBox(
              height: 7,
            ),
            FadeInDown(
              child: CustomTextFormField(
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
            ),
            const Spacer(
              flex: 5,
            ),
            FadeInUp(
              child: CustomButton(
                  text: 'Reset Password',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/home');
                      passwordController.clear();
                    }
                    // Navigator.pushNamed(context, '/successChangePassword');
                  }),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
