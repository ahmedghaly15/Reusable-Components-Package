import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.onLongPressed,
    required this.child,
    required this.height,
    required this.width,
    this.elevation,
    this.padding,
    this.color,
    this.radius,
    this.borderSide,
    this.splashColor,
  });

  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;
  final double height;
  final double width;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? splashColor;
  final double? radius;
  final BorderSide? borderSide;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        onPressed: onPressed,
        onLongPress: onLongPressed,
        highlightElevation: 0,
        elevation: elevation ?? 0,
        padding: padding,
        color: color,
        splashColor: splashColor,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 0),
          borderSide: borderSide ?? BorderSide.none,
        ),
        child: child,
      ),
    );
  }
}
