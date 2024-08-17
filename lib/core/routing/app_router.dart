import 'package:flutter/material.dart';
import 'package:resturant_app/core/routing/routes.dart';
import 'package:resturant_app/features/auth/welcome_screen.dart';
import 'package:resturant_app/features/onboarding/onboarding_screen.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_)=>OnboardingScreen());

      case Routes.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      default:
        return MaterialPageRoute(builder: (_) =>  Scaffold(body: Center(child: Text('No route defined for ${settings.name}'),),));
    }
    }
  }
