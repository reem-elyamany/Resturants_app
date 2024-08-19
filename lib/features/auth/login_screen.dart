import 'package:flutter/material.dart';
import 'package:resturant_app/features/auth/widgets/login_body.dart';

class LoginScreen
 extends StatefulWidget {
  const LoginScreen
  ({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}