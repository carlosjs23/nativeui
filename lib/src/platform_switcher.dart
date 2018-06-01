import 'package:flutter/material.dart';

/// Unique widget for switch widgets between platforms.
///
class PlatformSwitcher extends StatelessWidget {
  const PlatformSwitcher({
    Key key,
    this.androidChild,
    this.iOSChild,
    this.fuchsiaChild,
  }) : super(key: key);

  // A widget to be rendered when the platform is Android
  final Widget androidChild;

  // A widget to be rendered when the platform is iOS
  final Widget iOSChild;

  // A widget to be rendered when the platform is Fuchsia
  final Widget fuchsiaChild;

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      return iOSChild;
    } else if (Theme.of(context).platform == TargetPlatform.fuchsia) {
      return fuchsiaChild;
    }
    return androidChild;
  }
}
