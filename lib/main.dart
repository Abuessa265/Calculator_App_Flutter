import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const CalculatorApp(),
    ),
  );
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: const HomeScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.green, foregroundColor: Colors.white),
        inputDecorationTheme: InputDecorationTheme(
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
            errorBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
            contentPadding: EdgeInsets.all(16)),
      ),
    );
  }
}
