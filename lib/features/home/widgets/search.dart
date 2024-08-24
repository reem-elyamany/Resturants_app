import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';
import 'package:resturant_app/core/widgets/text_field.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: CustomTextFormField(
        
        hintText: 'Search',
        prefixIcon: Image.asset('asset/images/home/search_icon.png',
          ),
        fillColor: ColorManager.lightGray,
      ),
    );
  }
}
