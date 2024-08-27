import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';
import 'package:resturant_app/features/booking_history/widgets/details_appbar.dart';
import 'package:resturant_app/features/booking_history/widgets/details_center.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.green,
        automaticallyImplyLeading: false,
        title: DetailsAppbar(
          icon: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: ColorManager.white,
              )),
          sizedBox: SizedBox(
              // width: 60,
              ),
          text: 'Details Resturant',
        ),
      ),
      body: SingleChildScrollView(child: DetailsCenter()),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: ColorManager.mintGray.withOpacity(.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: CustomButton(
            width: 200,
            text: 'Booking',
            onPressed: () {
              Navigator.pushNamed(context, '/profileScreen');
            }),
      ),
    );
  }
}
