import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:example/app/modules/home/home_page.dart';

main() {
  testWidgets('HomePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage(title: 'Home')));
    final titleFinder = find.text('Home');
    expect(titleFinder, findsOneWidget);
  });
}
