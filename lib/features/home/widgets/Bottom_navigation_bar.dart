import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        mouseCursor: SystemMouseCursors.grab,
        selectedItemColor: ColorManager.green,
        items: const [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('asset/images/home/Frame (3).png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('asset/images/home/Frame (4).png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('asset/images/home/Frame (5).png'),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            
          });
        });
 
  }
}
