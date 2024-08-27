import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/widgets/custom_button.dart';
import 'package:resturant_app/features/booking_history/widgets/booking_appbar.dart';
import 'package:resturant_app/features/home/widgets/list3.dart';

class BookingHistoryBody extends StatelessWidget {
  const BookingHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        BookingAppbar(
          
        ),
        SizedBox(
          height: 20,
        ),
        List3(
          text: 'Tava Restaurant',
          hintText: 'Zakir Hossain Rd',
          buttonText: 'Check',
        ),
        CustomButton(
          width: 200,
          height: 50,
          color: ColorManager.white,
          textColor: ColorManager.mintGray,
          text: 'Booking more',
          image: Image.asset('asset/images/home/Frame (6).png'),
          onPressed: () {
            Navigator.pushNamed(context, '/ditailsScreen');
          },
        ),
        Spacer(),
      ],
    );
  }
}
