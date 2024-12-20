import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meowmonite/screens/main_screen.dart';
import 'package:meowmonite/bindings/main_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Meowmonite',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      initialBinding: MainBinding(),
      home: MainScreen(),
    );
  }
}
