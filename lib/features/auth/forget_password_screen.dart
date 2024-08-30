import 'package:flutter/material.dart';
import 'package:resturant_app/features/auth/widgets/forget_password_body.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgetPasswordBody(),
    );
  }
}