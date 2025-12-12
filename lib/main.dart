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
      
      // 🌟 DEFAULT FONT: MANROPE
      theme: ThemeData(
        fontFamily: 'Manrope',
        useMaterial3: false, // keep classic Material 2 look if needed
      ),

      home: const LoginScreen(),
    );
  }
}