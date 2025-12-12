import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
void main() {
  runApp(const QuickCartApp());
}

class QuickCartApp extends StatelessWidget {
  const QuickCartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Manrope',
        useMaterial3: false,
      ),
      home: const LoginScreen(),
    );
  }
}