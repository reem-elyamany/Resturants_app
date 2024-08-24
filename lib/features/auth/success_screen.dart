import 'package:flutter/material.dart';
import 'package:resturant_app/features/auth/widgets/success_body.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SuccessBody(),
    );
  }
}