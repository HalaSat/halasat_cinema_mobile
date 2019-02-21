import 'package:flutter_test/flutter_test.dart';

import 'package:halasat_cinema_mobile/main.dart';

void main() {
  testWidgets('Card smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('The Walking Dead'), findsOneWidget);
  });
}
