import 'package:flutter/material.dart';
import 'package:task/core/utils/resources/colors_manager.dart';
import 'package:task/features/login/presentation/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorsManager.mainColor,
      ),
      home: const WelcomeScreen(),
    );
  }
}

