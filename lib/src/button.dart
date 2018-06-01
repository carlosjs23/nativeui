import 'package:flutter/material.dart';
import 'package:native_ui/native_ui.dart';
import 'ios/button.dart';

/// Wrapper for Android and iOS style buttons.
///
/// Provides a common API for both platform buttons
///
class Button extends StatelessWidget {
  /// Creates a native-styled platform button.
  const Button({
    Key key,
    @required this.onPressed,
    @required this.child,
    this.color,
    this.padding,
    this.borderRadius,
    this.width,
    this.height,
  }) : super(key: key);

  /// The callback that is called when the button is tapped or otherwise activated.
  ///
  /// If this is set to null, the button will be disabled.
  final VoidCallback onPressed;

  /// The widget below this widget in the tree.
  ///
  /// Typically a [Text] widget.
  final Widget child;

  /// The color of the button's background.
  ///
  /// Defaults to null which produces a button with no background or border.
  final Color color;

  /// The amount of space to surround the child inside the bounds of the button.
  ///
  /// On iOS defaults to 16.0 pixels.
  /// On Android defaults to the value from the current [ButtonTheme],
  /// [ButtonThemeData.padding].
  final EdgeInsetsGeometry padding;

  /// **Only iOS** The radius of the button's corners when it has a background color.
  ///
  /// Defaults to round corners of 8 logical pixels.
  final BorderRadius borderRadius;

  /// The smallest horizontal extent that the button will occupy.
  ///
  /// On Android defaults to the value from the current [ButtonTheme].
  /// On iOS defaults to 44.0
  final double width;

  /// The vertical extent of the button.
  ///
  /// On Android defaults to the value from the current [ButtonTheme].
  /// On iOS defaults to 44.0
  final double height;

  /// Whether the button is enabled or disabled. Buttons are disabled by default. To
  /// enable a button, set its [onPressed] property to a non-null value.
  bool get enabled => onPressed != null;

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
