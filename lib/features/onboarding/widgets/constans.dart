class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent(
      {required this.image, required this.title, required this.description});
}

List<OnboardingContent> onboardingContent = [
  OnboardingContent(
      image: 'asset/images/onboarding/onboarding1.png',
      title: 'Nearby restaurants',
      description:
          'You dont have to go far to find a good restaurant,we have provided all the restaurants that is near you '),
  OnboardingContent(
      image: 'asset/images/onboarding/onboarding2.png',
      title: 'Select the Favorites Menu',
      description:
          'Now eat well, dont leave the house,You can choose your favorite food only with one click'),
  OnboardingContent(
      image: 'asset/images/onboarding/onboarding3.png',
      title: 'Good food at a cheap price',
      description:
          'You can eat at expensive restaurants with affordable price'),
];
