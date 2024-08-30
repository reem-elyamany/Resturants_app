import 'package:flutter/material.dart';
import 'package:resturant_app/core/theming/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final double? height;
  final String? Function(String?)? validator;
  final InputDecoration? decoration;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscure;
  final bool? filled;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? readOnly;
  final Color? fillColor;
  final void Function()? onTap;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.validator,
    this.controller,
    this.decoration,
    this.keyboardType,
    this.obscure = false,
    this.filled,
    this.height,
    this.suffixIcon,
    this.prefixIcon,
    this.readOnly,
    this.onTap,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly ?? false,
      decoration: decoration ??
          InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              filled: filled ?? true,
              fillColor: fillColor ?? ColorManager.white,
              hintText: hintText ?? '',
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: ColorManager.mintGray,
                ),
              ),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon),
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscure ?? false,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
