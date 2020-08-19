import 'package:flutter/material.dart';
import 'package:flutter_app_test/features/counter/counter.dart';
import 'package:provider/provider.dart';

import 'features/counter/counter_view.dart';

void main() {
  runApp(ChangeNotifierProvider<Counter>(
    create: (_) => Counter(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
