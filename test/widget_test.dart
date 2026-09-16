import 'package:flutter_test/flutter_test.dart';

import 'package:tugas_pertama/main.dart';

void main() {
  testWidgets('catalog displays three package cards', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Paket Starter'), findsOneWidget);
    expect(find.text('Paket Profesional'), findsOneWidget);
    expect(find.text('Paket Bisnis'), findsOneWidget);
  });
}
