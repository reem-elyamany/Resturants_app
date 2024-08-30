import 'package:flutter/material.dart';
import 'package:resturant_app/core/routing/routes.dart';
import 'package:resturant_app/features/all_home_screens.dart';
import 'package:resturant_app/features/auth/forget_password_screen.dart';
import 'package:resturant_app/features/auth/login_screen.dart';
import 'package:resturant_app/features/auth/register.dart';
import 'package:resturant_app/features/auth/success_change_password.dart';
import 'package:resturant_app/features/auth/success_screen.dart';
import 'package:resturant_app/features/auth/welcome_screen.dart';
import 'package:resturant_app/features/auth/change_password_screen.dart';
import 'package:resturant_app/features/booking_history/booking_history_screen.dart';
import 'package:resturant_app/features/booking_history/details_screen.dart';
import 'package:resturant_app/features/home/home_screen.dart';
import 'package:resturant_app/features/onboarding/onboarding_screen.dart';
import 'package:resturant_app/features/profile/profile_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());

      case Routes.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());

      case Routes.changePassword:
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());

      case Routes.successChangePassword:
        return MaterialPageRoute(builder: (_) => const SuccessChangePassword());

      case Routes.successScreen:
        return MaterialPageRoute(builder: (_) => const SuccessScreen());

      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.bookingHistoryScreen:
        return MaterialPageRoute(builder: (_) => const BookingHistoryScreen());

      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => const Profilescreen());

      case Routes.ditailsScreen:
        return MaterialPageRoute(builder: (_) => const DetailsScreen());
      case Routes.allHomeScreens:
        return MaterialPageRoute(builder: (_) => const AllHomeScreens());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
