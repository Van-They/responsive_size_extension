import 'package:flutter/material.dart';
import 'package:responsive_size_extension/responsive_size_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 14.scale),
          ),
        ),
      ),
    );
  }
}
