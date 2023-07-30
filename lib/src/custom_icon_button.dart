import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.iconColor,
    required this.iconSize,
    this.offset = Offset.zero,
    this.blurRadius = 0,
    this.spreadRadius = 0,
    this.shadowColor,
    this.height,
    this.width,
    this.radius,
    this.splashColor,
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final VoidCallback? onTap;
  final Offset offset;
  final double blurRadius;
  final double spreadRadius;
  final Color? shadowColor;
  final Color? splashColor;
  final double? height;
  final double? width;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 40,
      width: width ?? 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius ?? 10),
        boxShadow: [
          BoxShadow(
            offset: offset,
            color: shadowColor ?? const Color(0xFF000000).withOpacity(0.2),
            blurRadius: blurRadius,
            spreadRadius: spreadRadius,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: splashColor,
          onTap: onTap,
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
