import 'package:flutter/material.dart';

// Render a Widget based on a boolean expression.
class ConditionalBuilder extends StatelessWidget {
  const ConditionalBuilder({
    Key key,
    @required this.condition,
    @required this.trueWidget,
    @required this.falseWidget,
  }) : super(key: key);

  final bool condition;

  //Widget to be rendered when the condition its true.
  final Widget trueWidget;

  //Widget to be rendered when the condition its false.
  final Widget falseWidget;

  @override
  Widget build(BuildContext context) {
    if (condition) {
      return trueWidget;
    }
    return falseWidget;
  }
}
