import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/features/home/widgets/appbar..dart';
import 'package:resturant_app/features/home/widgets/list1.dart';
import 'package:resturant_app/features/home/widgets/list2.dart';
import 'package:resturant_app/features/home/widgets/list3.dart';
import 'package:resturant_app/features/home/widgets/search.dart';
import 'package:resturant_app/features/home/widgets/text3.dart';
import 'package:resturant_app/features/home/widgets/text_list2.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBar(),
      ),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                //   child: CustomAppBar(),
                // ),
                Search(),
                List1(),
                // SizedBox(
                //   height: 30,
                // ),
                TextList2(),
                List2(),
                SizedBox(
                  height: 30,
                ),
                ListList3(),
                // CustomBottomNavigationBar(),
              ],
            ),
          ),
          SliverFillRemaining(
            child: List3(),
          ),
        ],
      ),
     
    );
  }
}
