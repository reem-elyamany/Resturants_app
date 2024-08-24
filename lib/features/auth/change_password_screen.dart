import 'package:flutter/material.dart';
import 'package:resturant_app/features/auth/widgets/change_password_body.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChangePasswordBody(),
    );
  }
}