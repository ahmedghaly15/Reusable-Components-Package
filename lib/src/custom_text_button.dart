import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.textStyle,
    this.splashColor,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String text;
  final TextStyle? textStyle;
  final Color? splashColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: splashColor,
        onTap: onTap,
        child: Text(text, style: textStyle),
      ),
    );
  }
}
