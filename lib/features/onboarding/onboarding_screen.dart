import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/features/onboarding/widgets/constans.dart';
import 'package:resturant_app/features/onboarding/widgets/onboarding_icon.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.white,
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  itemCount: onboardingContent.length,
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(onboardingContent[i].image, height: 300),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            onboardingContent[i].title,
                            style: Styles.text30,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            onboardingContent[i].description,
                            style: Styles.text14.copyWith(shadows: [
                              const BoxShadow(
                                color: ColorManager.lightGray,
                                blurRadius: 1.5,
                              )
                            ]),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/welcome');
                      },
                      child: Text(
                        'Skip',
                        style: Styles.text14.copyWith(fontSize: 18),
                      )),
                ],
              ),
            )
          ],
        ));
  }
}





// class OnboardingIcon extends StatelessWidget {
//   const OnboardingIcon({super.key, required this.index});
// final int index;
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//                     child: Row(
//                         children: List.generate(
//                             onboardingContent.length,
//                             (index) => Container(
//                                   height: 10,
//                                   width: currentIndex == index ? 20 : 10,
//                                   margin: EdgeInsets.only(right: 5),
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       color: Theme.of(context).primaryColor),
//                                 ))),
//                   );
//   }
// }