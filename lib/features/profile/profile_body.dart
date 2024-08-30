import 'package:flutter/material.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';
import 'package:resturant_app/features/profile/profile_buttom_container.dart';
import 'package:resturant_app/features/profile/profile_mid_container.dart';
import 'package:resturant_app/features/profile/profile_top_container.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
      child: Column(
        children: [
          const ProfileTopContainer(),
          const SizedBox(
            height: 50,
          ),
          const ProfileMidContainer(),
          const SizedBox(
            height: 10,
          ),
          const ProfileButtomContainer(),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            width: 135,
            height: 45,
            text: 'Logout',
            onPressed: () {},
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
