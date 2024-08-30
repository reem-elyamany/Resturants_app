import 'package:flutter/material.dart';
import 'package:resturant_app/core/helpers/validation.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';
import 'package:resturant_app/core/widgets/text_field.dart';

class RigesterTextFieldAndButton extends StatefulWidget {
  const RigesterTextFieldAndButton({super.key});

  @override
  State<RigesterTextFieldAndButton> createState() =>
      _RigesterTextFieldAndButtonState();
}

class _RigesterTextFieldAndButtonState
    extends State<RigesterTextFieldAndButton> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  bool isObsecureText = true;

  @override
  Widget build(BuildContext context) {
    return 
    Form(
      key: _formKey,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Full Name', style: Styles.text18),
        const SizedBox(
          height: 7,
        ),
        CustomTextFormField(
          controller: nameController,
          validator: (value) => FormValidator.validateName(value),
          hintText: 'Enter your full name',
          keyboardType: TextInputType.text,
        ),
        const SizedBox(height: 15),
        Text('Email address', style: Styles.text18),
        const SizedBox(
          height: 7,
        ),
        CustomTextFormField(
          controller: emailController,
          validator: (value) => FormValidator.validateEmail(value),
          hintText: 'Eg nameemaile@emailkamu.com',
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 15),
        Text('Password', style: Styles.text18),
        const SizedBox(
          height: 7,
        ),
        CustomTextFormField(
          controller: passwordController,
          validator: (value) => FormValidator.validatePassword(value),
          hintText: 'Enter your password',
          obscure: isObsecureText,
          keyboardType: TextInputType.visiblePassword,
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
        ),
        const SizedBox(height: 25),
        CustomButton(
          color: ColorManager.lightGray,
          textColor: ColorManager.mintGray,
          width: 270,
          height: 50,
          text: 'Registration',
          onPressed: () {
             if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, '/home');
                  emailController.clear();
                  passwordController.clear();
                }
          },
        ),
        const Divider(
          color: ColorManager.mintGray,
          thickness: .5,
          indent: 70,
          endIndent: 70,
        ),
        CustomButton(
          color: ColorManager.lightGray,
          textColor: ColorManager.darktGray,
          width: 270,
          height: 50,
          image: Image.asset('asset/images/auth/ic_google.png'),
          text: 'Sign up with Google',
          onPressed: () {
             if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, '/home');
                  emailController.clear();
                  passwordController.clear();
                }
          },
        ),
      ],
    ));
  }
}
