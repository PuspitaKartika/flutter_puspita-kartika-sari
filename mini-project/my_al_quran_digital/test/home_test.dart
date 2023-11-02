import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_al_quran_digital/ui/home/home_screen.dart';

void main() {
  testWidgets('Test Home Screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomeScreen(),
    ));

    expect(find.text('Fitur'), findsOneWidget);
    expect(find.text('Dengarkan murotal hari ini'), findsOneWidget);
  });
}
