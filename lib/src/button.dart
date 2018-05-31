import 'package:flutter/material.dart';
import 'package:native_ui/native_ui.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color color;
  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;
  final double width;
  final double height;

  const Button({
    Key key,
    @required this.onPressed,
    this.child,
    this.color,
    this.padding,
    this.borderRadius,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformSwitcher(
      iOSChild: iOSButton(
        child: child,
        onPressed: onPressed,
        color: color,
        padding: padding,
        borderRadius:
            borderRadius ?? const BorderRadius.all(const Radius.circular(8.0)),
        height: height,
        width: width,
      ),
      androidChild: MaterialButton(
        key: key,
        onPressed: onPressed,
        child: child,
        color: color,
        padding: padding,
        minWidth: width,
        height: height,
      ),
    );
  }
}
