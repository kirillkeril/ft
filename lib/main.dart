import 'package:flutter/material.dart';
import 'package:ft/pages/auth/AuthPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme:
              const TextTheme(labelSmall: TextStyle(color: Colors.white)),
          useMaterial3: false,
          colorScheme: const ColorScheme.dark(
            onPrimary: Colors.white,
            outline: Colors.deepOrange,
            background: Colors.black,
            surface: Colors.red,
            primary: Colors.red,
          )),
      home: const AuthPage(),
    );
  }
}
