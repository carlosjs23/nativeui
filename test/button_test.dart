import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:native_ui/native_ui.dart';

const TextStyle testStyle = const TextStyle(
  fontFamily: 'Ahem',
  fontSize: 10.0,
);

void main() {
  testWidgets('Button wrapper renders MaterialButton when TargetPlatform is Android', (WidgetTester tester) async {
    await tester.pumpWidget(
      Theme(
        data: ThemeData(
          platform: TargetPlatform.android,
        ),
        child: boilerplate(
          child: Button(
            child: Text(
              'X',
              style: testStyle,
            ),
            onPressed: null,
          ),
        ),
      ),
    );
    final RenderBox button = tester.renderObject(find.byType(MaterialButton));
    expect(
      button.size,
      const Size(88.0, 36.0),
    );
  });

  testWidgets('Button wrapper renders iOSButton when TargetPlatform is iOS', (WidgetTester tester) async {
    await tester.pumpWidget(
      Theme(
        data: ThemeData(
          platform: TargetPlatform.iOS,
        ),
        child: boilerplate(
          child: Button(
            child: const Text('X', style: testStyle),
            onPressed: null,
          ),
        ),
      ),
    );
    final RenderBox button = tester.renderObject(find.byType(iOSButton));
    expect(
      button.size,
      const Size.square(44.0),
    );
  });
}

Widget boilerplate({Widget child}) {
  return new Directionality(
    textDirection: TextDirection.ltr,
    child: new Center(child: child),
  );
}
