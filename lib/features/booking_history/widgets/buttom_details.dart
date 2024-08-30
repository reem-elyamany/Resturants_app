import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';

class ButtomDetails extends StatelessWidget {
  const ButtomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorManager.green

      ),
      child: CustomButton(text: 'Booking', onPressed: (){}),
    );
  }
}
