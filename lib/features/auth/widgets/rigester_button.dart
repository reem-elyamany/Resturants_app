import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';

class RigesterButton extends StatelessWidget {
  const RigesterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          color: ColorManager.lightGray,
          textColor: ColorManager.mintGray,
          width: 270,
          height: 50,
          text: 'Registration',
          onPressed: () {
            Navigator.pushNamed(context, '/home');
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
            Navigator.pushNamed(context, '/home');
          },
        ),
      ],
    );
  }
}
