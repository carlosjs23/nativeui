import 'package:flutter/material.dart';

class PlatformSwitcher extends StatelessWidget {
  final Widget androidChild;
  final Widget iOSChild;

  const PlatformSwitcher({Key key, this.androidChild, this.iOSChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      return iOSChild;
    }
    return androidChild;
  }
}
