import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.iconColor,
    required this.iconSize,
    this.height,
    this.width,
    this.radius,
    this.splashColor,
    this.elevation,
    this.boxShadow,
    this.backgroundColor,
    this.shape = BoxShape.rectangle,
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final BoxShape shape;
  final List<BoxShadow>? boxShadow;
  final Color? splashColor;
  final double? height;
  final double? width;
  final double? radius;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: elevation ?? 0,
      child: InkWell(
        splashColor: splashColor,
        onTap: onTap,
        child: Container(
          height: height ?? 40,
          width: width ?? 40,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(radius ?? 10),
            boxShadow: boxShadow,
            shape: shape,
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
        ),
      ),
    );
  }
}
