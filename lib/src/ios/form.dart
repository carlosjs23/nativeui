import 'package:flutter/cupertino.dart';

class FormFieldView extends StatelessWidget {
  const FormFieldView({
    Key key,
    this.borderTop = false,
    this.borderBottom = false,
    @required this.children,
    this.height,
    this.contentPadding,
  }) : super(key: key);

  final bool borderTop;
  final bool borderBottom;
  final EdgeInsets contentPadding;
  final double height;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        border: Border(
          top: borderTop
              ? const BorderSide(color: const Color(0xFFBCBBC1), width: 0.0)
              : BorderSide(color: CupertinoColors.white, width: 0.0),
          bottom: borderBottom
              ? const BorderSide(color: const Color(0xFFBCBBC1), width: 0.0)
              : BorderSide(color: CupertinoColors.white, width: 0.0),
        ),
      ),
      height: height ?? 44.0,
      child: Padding(
        padding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          top: false,
          bottom: false,
          child: DefaultTextStyle(
            style: const TextStyle(
              letterSpacing: -0.24,
              fontSize: 17.0,
              color: CupertinoColors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}

class FormView extends StatelessWidget {
  const FormView({Key key, this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontFamily: '.SF UI Text',
        fontSize: 17.0,
        color: CupertinoColors.black,
      ),
      child: DecoratedBox(
        decoration: const BoxDecoration(color: const Color(0xFFEFEFF4)),
        child: ListView(
          children: children,
        ),
      ),
    );
  }
}
