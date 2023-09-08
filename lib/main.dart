import 'package:flutter/material.dart';
import 'package:myfirstapplication/Test.dart';
import 'package:myfirstapplication/home_page.dart';
import 'package:myfirstapplication/login_page.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lesson',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: HexColor("#181920")),
        useMaterial3: true,
      ),
      home: Test(),
    );
  }
}


