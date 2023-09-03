import 'package:flutter/material.dart';
import 'package:navigation/home_screen.dart';
import 'screenthree.dart';
import 'tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const home_screen(),
    );
  }
}
