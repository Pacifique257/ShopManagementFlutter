import 'package:flutter/material.dart';
import 'package:shop_management/View/welcome_screen.dart';
import 'package:shop_management/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MY SHOP',
      theme: lightMode,
      home: const welcomeScreen(),
    );
  }
}
