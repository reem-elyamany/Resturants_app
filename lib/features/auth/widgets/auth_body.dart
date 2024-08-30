import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/features/auth/widgets/container_content.dart';

class RigesterBody extends StatelessWidget {
  const RigesterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:  AssetImage('asset/images/auth/auth.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 570,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: ColorManager.white),
            child: const RegisterContainerContent(),
          ),
        ),
      ],
    );

    // Stack(children: [
    //   Container(
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //         image: AssetImage('asset/images/auth/auth.jpg'),
    //         fit: BoxFit.cover,
    //       ),
    //     ),
    //   ),
    //   Align(
    //     alignment: Alignment.bottomCenter,
    //     child: Container(
    //       height: 570,
    //       decoration: BoxDecoration(
    //           borderRadius: BorderRadius.only(
    //             topLeft: Radius.circular(40),
    //             topRight: Radius.circular(40),
    //           ),
    //           color: ColorManager.white),
    //       //child: SingleChildScrollView(child: RegisterContainerContent()),
  }
}
