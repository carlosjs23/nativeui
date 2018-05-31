import 'package:flutter/material.dart';

class ConditionalBuilder extends StatelessWidget {
  final bool condition;
  final Widget trueWidget;
  final Widget falseWidget;

  const ConditionalBuilder({
    Key key,
    @required this.condition,
    @required this.trueWidget,
    @required this.falseWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (condition) {
      return trueWidget;
    }
    return falseWidget;
  }
}
