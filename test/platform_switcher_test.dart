import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:native_ui/native_ui.dart';

void main() {
  testWidgets('Android platform', (WidgetTester tester) async {
    await tester.pumpWidget(
      Theme(
        data: ThemeData(
          platform: TargetPlatform.android,
        ),
        child: boilerplate(
          child: PlatformSwitcher(
            androidChild: new Text('Android'),
            iOSChild: new Text('iOS'),
            fuchsiaChild: new Text('fuchsia'),
          ),
        ),
      ),
    );
    final RenderParagraph textWidget = tester.renderObject(find.byType(Text));
    expect(textWidget.text.text, 'Android');
  });

  testWidgets('iOS platform', (WidgetTester tester) async {
    await tester.pumpWidget(
      Theme(
        data: ThemeData(
          platform: TargetPlatform.iOS,
        ),
        child: boilerplate(
          child: PlatformSwitcher(
            androidChild: new Text('Android'),
            iOSChild: new Text('iOS'),
            fuchsiaChild: new Text('fuchsia'),
          ),
        ),
      ),
    );
    final RenderParagraph textWidget = tester.renderObject(find.byType(Text));
    expect(textWidget.text.text, 'iOS');
  });

  testWidgets('fucshia platform', (WidgetTester tester) async {
    await tester.pumpWidget(
      Theme(
        data: ThemeData(
          platform: TargetPlatform.fuchsia,
        ),
        child: boilerplate(
          child: PlatformSwitcher(
            androidChild: new Text('Android'),
            iOSChild: new Text('iOS'),
            fuchsiaChild: new Text('fuchsia'),
          ),
        ),
      ),
    );
    final RenderParagraph textWidget = tester.renderObject(find.byType(Text));
    expect(
      textWidget.text.text,
      'fuchsia',
    );
  });
}

Widget boilerplate({Widget child}) {
  return new Directionality(
    textDirection: TextDirection.ltr,
    child: new Center(child: child),
  );
}
