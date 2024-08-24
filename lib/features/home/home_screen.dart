import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/features/home/widgets/appbar..dart';
import 'package:resturant_app/features/home/widgets/bottom.dart';
import 'package:resturant_app/features/home/widgets/home_body.dart';
import 'package:resturant_app/features/home/widgets/list1.dart';
import 'package:resturant_app/features/home/widgets/list2.dart';
import 'package:resturant_app/features/home/widgets/list3.dart';
import 'package:resturant_app/features/home/widgets/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Padding(
      //   padding: const EdgeInsets.all(20.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       const CustomAppBar(),
      //       SizedBox(
      //         height: 30,
      //       ),
      //       const Search(),
      //       const List1(),
      //       Text(
      //         'Today New Arivable',
      //         style: Styles.text25,
      //       ),
      //       Text(
      //         'Best of the today food list update',
      //         style: Styles.text14,
      //       ),
      //       const List2()
      //       //HomeBody(),
      //     ],
      //   ),
      // ),

      body: HomeBody(),
    );
  }
}
