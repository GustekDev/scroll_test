import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:scroll_test/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('scroll', (tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('Top'), findsOneWidget);
      await tester.scrollUntilVisible(find.text("Bottom"), 10);
      expect(find.text('Bottom'), findsOneWidget);
    });
  });
}
