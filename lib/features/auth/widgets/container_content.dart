import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/features/auth/widgets/rigester_textfiled_anbutton.dart.dart';

class RegisterContainerContent extends StatelessWidget {
  const RegisterContainerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Column(
        children: [
          // const Divider(
          //   color: ColorManager.mintGray,
          //   thickness: 7,
          //   indent: 136,
          //   endIndent: 136,
          // ),
          TextButton(
              onPressed: () {},
              child: Text('Create Account',
                  style: Styles.text23.copyWith(color: ColorManager.green))),
          Divider(
            color: ColorManager.green,
            thickness: 2,
            indent: 110,
            endIndent: 110,
          ),
          const Spacer(),
          const SizedBox(height: 20),
          const RigesterTextFieldAndButton(),
        ],
      ),
    );
  }
}
