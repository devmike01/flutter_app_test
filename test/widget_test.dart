// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_app_test/features/counter/counter.dart';
import 'package:flutter_app_test/features/counter/counter_view.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app_test/main.dart';
import 'package:provider/provider.dart';

Widget createCounterScreen() => ChangeNotifierProvider<Counter>(
      create: (context) => Counter(),
      child: MaterialApp(
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );

void main() {
  group("Test counter", () {
    testWidgets("Test increment", (tester) async {
      await tester.pumpWidget(createCounterScreen());

      expect(tester.firstWidget(find.text("0")), findsOneWidget);

      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      expect(find.text("1"), findsOneWidget);

      await tester.tap(find.byIcon(Icons.remove));

      await tester.pumpAndSettle();
      expect(find.text("0"), findsOneWidget);

      //expect(find.text("-1"), false);
    });
  });
}
