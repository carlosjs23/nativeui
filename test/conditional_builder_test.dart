import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:native_ui/native_ui.dart';

void main() {
  testWidgets('Does renders trueWidget when condition is true', (WidgetTester tester) async {
    await tester.pumpWidget(
      boilerplate(
          child: const ConditionalBuilder(
              condition: true,
              trueWidget: const Text('True'),
              falseWidget: const Text('False'))),
    );
    final RenderParagraph textWidget = tester.renderObject(find.byType(Text));
    expect(
      textWidget.text.text,
      'True',
    );
  });

  testWidgets('Does renders falseWidget when condition is false', (WidgetTester tester) async {
    await tester.pumpWidget(
      boilerplate(
          child: const ConditionalBuilder(
              condition: false,
              trueWidget: const Text('True'),
              falseWidget: const Text('False'))),
    );
    final RenderParagraph textWidget = tester.renderObject(find.byType(Text));
    expect(
      textWidget.text.text,
      'False',
    );
  });
}

Widget boilerplate({Widget child}) {
  return new Directionality(
    textDirection: TextDirection.ltr,
    child: new Center(child: child),
  );
}
