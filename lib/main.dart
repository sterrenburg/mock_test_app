import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mocktestapp/injectable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configure(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
