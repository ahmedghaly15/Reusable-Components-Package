import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.child,
    required this.hasPrefix,
    this.height,
    this.width,
    this.radius,
    this.splashColor,
    this.gradient,
    this.boxShadow,
    this.elevation,
    this.backgroundColor,
    this.prefixWidget,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Widget child;
  final bool hasPrefix;
  final Widget? prefixWidget;
  final double? height;
  final double? width;
  final double? radius;
  final double? elevation;
  final Color? splashColor;
  final Color? backgroundColor;
  final Gradient? gradient;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: elevation ?? 0,
      child: InkWell(
        splashColor: splashColor,
        borderRadius: BorderRadius.circular(radius ?? 50.0),
        onTap: onPressed,
        child: Container(
          height: height ?? 50,
          width: width ?? 150,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(radius ?? 50.0),
            boxShadow: boxShadow,
            gradient: gradient,
          ),
          child: hasPrefix
              ? Row(
                  children: <Widget>[
                    const Spacer(
                      flex: 1,
                    ),
                    prefixWidget!,
                    const Spacer(
                      flex: 2,
                    ),
                    child,
                    const Spacer(
                      flex: 3,
                    ),
                  ],
                )
              : child,
        ),
      ),
    );
  }
}
