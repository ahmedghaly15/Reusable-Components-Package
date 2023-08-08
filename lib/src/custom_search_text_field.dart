import 'package:flutter/material.dart';

import '../reusable_components.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    Key? key,
    this.height,
    this.width,
    this.contentPadding,
    this.boxShadow,
    required this.searchTextFieldController,
    required this.hint,
    required this.hintStyle,
    this.suffixIconButton,
    this.suffixIcon,
    this.suffixIconColor,
    this.suffixIconSize,
    this.suffixOnPressed,
    this.prefixIconButton,
    this.prefixIcon,
    this.prefixIconColor,
    this.prefixIconSize,
    this.prefixOnPressed,
  }) : super(key: key);

  final double? height;
  final double? width;
  final EdgeInsetsGeometry? contentPadding;
  final List<BoxShadow>? boxShadow;
  final TextEditingController searchTextFieldController;
  final String hint;
  final TextStyle hintStyle;
  final Widget? suffixIconButton;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final double? suffixIconSize;
  final VoidCallback? suffixOnPressed;
  final Widget? prefixIconButton;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final double? prefixIconSize;
  final VoidCallback? prefixOnPressed;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      height: height ?? 50,
      width: width ?? 380,
      controller: searchTextFieldController,
      hint: hint,
      hintStyle: hintStyle,
      contentPadding: contentPadding,
      boxShadow: boxShadow,
      suffixIcon: suffixIconButton ??
          IconButton(
            icon: Icon(
              suffixIcon ?? Icons.search,
              color: suffixIconColor,
              size: suffixIconSize,
            ),
            onPressed: suffixOnPressed,
          ),
      prefixIcon: prefixIconButton ??
          IconButton(
            onPressed: prefixOnPressed,
            icon: Icon(
              prefixIcon ?? Icons.search,
              color: prefixIconColor,
              size: prefixIconSize,
            ),
          ),
      textCapitalization: TextCapitalization.none,
      keyboardType: TextInputType.text,
    );
  }
}
