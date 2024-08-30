import 'package:flutter/material.dart';
import 'package:resturant_app/features/booking_history/widgets/booking_history_body.dart';

class BookingHistoryScreen extends StatelessWidget {
  const BookingHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookingHistoryBody(),
    );
  }
}
