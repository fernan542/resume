import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/home/home.dart';

void main() {
  runApp(const ResumeApp());
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: seedColor,
          contrastLevel: contrast,
        ),
      ),
      home: HomePage(),
    );
  }
}
