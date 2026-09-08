import 'package:flutter_test/flutter_test.dart';
import 'package:onebuttonapp/main.dart';

void main() {
  testWidgets('One button app test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the button is present.
    expect(find.text('Do Nothing'), findsOneWidget);

    // Tap the button.
    await tester.tap(find.text('Do Nothing'));
    await tester.pump();

    // Verify that the button is still present and nothing changed.
    expect(find.text('Do Nothing'), findsOneWidget);
  });
}
