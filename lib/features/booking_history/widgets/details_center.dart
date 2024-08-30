import 'package:flutter/material.dart';
import 'package:resturant_app/features/booking_history/widgets/detailsCenterTopContainer.dart';
import 'package:resturant_app/features/booking_history/widgets/details_center_bottom_container.dart';

class DetailsCenter extends StatelessWidget {
  const DetailsCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
          children: [
    DetailsCenterTopContainer(),
    SizedBox(height: 10,),
    DetailsCenterBottomContainer(),
          ],
        );
  }
}

