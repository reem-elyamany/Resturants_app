import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/theming/font.dart';
import 'package:resturant_app/features/onboarding/widgets/constans.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.white,
        body: FadeInLeft(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                    controller: _pageController,
                    itemCount: onboardingContent.length,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (_, i) {
                      return Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(onboardingContent[i].image,
                                height: 300),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              onboardingContent[i].title,
                              style: Styles.text25,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              onboardingContent[i].description,
                              style: Styles.text14.copyWith(shadows: [
                                const BoxShadow(
                                  color: ColorManager.mintGray,
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
                padding: const EdgeInsets.only(bottom: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/welcome');
                        },
                        child: Text(
                          'Skip',
                          style: Styles.text14.copyWith(fontSize: 18),
                        )),
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.green,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: ColorManager.green,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class ColorsManger {}





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

