import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/font.dart';

class TextList2 extends StatelessWidget {
  const TextList2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          Text(
            'Today New Arivable',
            style: Styles.text25,
          ),
          Text(
            'Best of the today food list update',
            style: Styles.text14,
          ),
        ],
      ),
    );
  }
}
