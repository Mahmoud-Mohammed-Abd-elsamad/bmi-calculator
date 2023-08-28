

import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';

import 'styles/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routName:(_) => HomeScreen(),
        ResultScreen.routName:(_) =>ResultScreen()

      },
       initialRoute: HomeScreen.routName,
      theme: MyTheme.lihgtTheme,
    );



  }}