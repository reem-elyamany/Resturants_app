import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/features/home/widgets/app_bar.dart';
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
        title: const CustomAppBar(),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                //   child: CustomAppBar(),
                // ),
                const Search(),
                FadeInRightBig(child: const List1()),
                // SizedBox(
                //   height: 30,
                // ),
                const TextList2(),
                FadeInRightBig(child: const List2()),
                const SizedBox(
                  height: 30,
                ),
                const ListList3(),
                // CustomBottomNavigationBar(),
              ],
            ),
          ),
          SliverFillRemaining(
            child: FadeInRightBig(child: List3()),
          ),
        ],
      ),
    );
  }
}
