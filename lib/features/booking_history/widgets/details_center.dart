import 'package:flutter/material.dart';
import 'package:resturant_app/features/booking_history/widgets/DetailsCenterTopContainer.dart';
import 'package:resturant_app/features/booking_history/widgets/details_center_bottom_container.dart';

class DetailsCenter extends StatelessWidget {
  const DetailsCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
    DetailsCenterTopContainer(),
    SizedBox(height: 10,),
    DetailsCenterBottomContainer(),
          ],
        );
  }
}

