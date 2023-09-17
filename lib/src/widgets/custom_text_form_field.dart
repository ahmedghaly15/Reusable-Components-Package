import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.hint,
    required this.controller,
    required this.textCapitalization,
    required this.keyboardType,
    this.backgroundColor,
    this.suffixIcon,
    this.focusNode,
    this.hintStyle,
    this.obscure,
    this.validating,
    this.onSubmit,
    this.onEditingComplete,
    this.onChanged,
    this.prefixIcon,
    this.height,
    this.width,
    this.contentPadding,
    this.boxShadow,
    this.radius,
    this.suffixIconColor,
    this.prefixIconColor,
    this.border,
    this.focusedBorderColor,
    this.enabledBorderColor,
    this.errorBorderColor,
    this.style,
    this.cursorColor,
    this.focusedBorderWidth,
    this.enabledBorderWidth,
    this.errorBorderWidth,
  }) : super(key: key);

  final FocusNode? focusNode;
  final String hint;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final bool? obscure;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final TextEditingController controller;
  final TextCapitalization textCapitalization;
  final String? Function(String?)? validating;
  final TextInputType keyboardType;
  final void Function(String)? onSubmit;
  final void Function()? onEditingComplete;
  final void Function(String)? onChanged;
  final double? height;
  final double? width;
  final double? radius;
  final Color? backgroundColor;
  final InputBorder? border;
  final Color? focusedBorderColor;
  final double? focusedBorderWidth;
  final Color? enabledBorderColor;
  final double? enabledBorderWidth;
  final Color? errorBorderColor;
  final double? errorBorderWidth;
  final Color? cursorColor;
  final EdgeInsetsGeometry? contentPadding;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60,
      width: width ?? 380,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(radius ?? 10.0),
        boxShadow: boxShadow,
      ),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          suffixIconColor: suffixIconColor,
          prefixIcon: prefixIcon,
          prefixIconColor: prefixIconColor,
          hintText: hint,
          hintStyle: hintStyle,
          contentPadding: contentPadding ??
              const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 16.0,
              ),
          enabledBorder: buildOutlineInputBorder(
            enabledBorderColor ?? Colors.white,
            enabledBorderWidth ?? 0,
          ),
          focusedBorder: buildOutlineInputBorder(
            focusedBorderColor ?? Colors.blue,
            focusedBorderWidth ?? 2,
          ),
          errorBorder: buildOutlineInputBorder(
            errorBorderColor ?? Colors.red,
            errorBorderWidth ?? 0,
          ),
          border: border ?? InputBorder.none,
        ),
        style: style ??
            const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
        cursorColor: cursorColor,
        obscureText: obscure ?? false,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        validator: validating,
        onFieldSubmitted: onSubmit,
        onEditingComplete: onEditingComplete,
        onChanged: onChanged,
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder(Color color, double width) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: width,
      ),
      borderRadius: BorderRadius.circular(radius ?? 10),
    );
  }
}
