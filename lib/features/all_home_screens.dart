import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/features/booking_history/widgets/booking_history_body.dart';
import 'package:resturant_app/features/home/widgets/home_body.dart';
import 'package:resturant_app/features/profile/profile_body.dart';

class AllHomeScreens extends StatefulWidget {
  const AllHomeScreens({super.key});

  @override
  State<AllHomeScreens> createState() => _AllHomeScreensState();
}

class _AllHomeScreensState extends State<AllHomeScreens> {
  @override
  Widget build(BuildContext context) {
    int currentPage = 0;
    final List<Widget> _screens = [
      const HomeBody(),
      const BookingHistoryBody(),
      const ProfileBody()
    ];

    return Scaffold(
        body: _screens[currentPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          selectedItemColor: ColorManager.green,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              
                icon: Image.asset(
                  'asset/images/home/Frame (15).png',
                ),
                
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('asset/images/home/Frame (13).png'),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('asset/images/home/Frame (14).png'),
                label: ''),
          ],
        ));
  }
}
