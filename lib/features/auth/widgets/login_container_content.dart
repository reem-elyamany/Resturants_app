import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/features/auth/widgets/login_textfield_and_button.dart';

class LoginContainerContent extends StatelessWidget {
  const LoginContainerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Column(
        children: [
         
          TextButton(
              onPressed: () {},
              child: Text('Login',
                  style: Styles.text23.copyWith(color: ColorManager.green))),
          Divider(
            color: ColorManager.green,
            thickness: 2,
            indent: 142,
            endIndent: 142,
          ),
          const SizedBox(height: 20),
          const LoginTextfieldAndButton(),
        ],
      ),
    );
  }
}
