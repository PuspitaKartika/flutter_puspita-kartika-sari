import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:soal_prioritas1/home/home_page.dart';

void main() {
  testWidgets('Test Home Page ', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomePage(),
    ));

    expect(find.text('Contact'), findsOneWidget);
    expect(find.text('List Contacts'), findsOneWidget);

    final submitButton = find.widgetWithText(ElevatedButton, 'Submit');
    await tester.tap(submitButton);
  });
}
