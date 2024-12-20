import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meowmonite/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Meowmonite',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 255, 227)),
      ),
      home: MainScreen(),
    );
  }
}
