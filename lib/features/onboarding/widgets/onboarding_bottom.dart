// import 'package:flutter/material.dart';
// import 'package:resturant_app/core/theming/colors.dart';
// import 'package:resturant_app/core/theming/font.dart';
// import 'package:resturant_app/features/onboarding/widgets/constans.dart';

// class OnboardingBottom extends StatefulWidget {
//   const OnboardingBottom({super.key});

//   @override
//   State<OnboardingBottom> createState() => _OnboardingBottomState();
// }

// class _OnboardingBottomState extends State<OnboardingBottom> {
//   int currentIndex = 0;
//   late PageController _pageController;

//   @override
//   void initState() {
//     _pageController = PageController(initialPage: 0);
//     super.initState();
//   }

//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return
//      Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         TextButton(
//             onPressed: () {
//               Navigator.pushNamed(context, '/welcome');
//             },
//             child: Text(
//               'Skip',
//               style: Styles.text14.copyWith(fontSize: 18),
//             )),
//         Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//                 onboardingContent.length, (index) => buildDot(index, context)),
//           ),
//         ),
//         IconButton(
//             onPressed: () {
//               PageController.nextPage(
//                   duration: const Duration(milliseconds: 300),
//                   curve: Curves.ease,
//                   );
//             },
//             icon: Icon(
//               Icons.arrow_forward,
//               color: ColorManager.green,
//             )),
//       ],
//     );
//   }

//   Container buildDot(int index, BuildContext context) {
//     return Container(
//       height: 10,
//       width: currentIndex == index ? 25 : 10,
//       margin: EdgeInsets.only(right: 7),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: ColorManager.mintGray,
//       ),
//     );
//   }
// }
