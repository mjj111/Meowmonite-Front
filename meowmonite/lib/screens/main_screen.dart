import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meowmonite/controllers/main_controller.dart';
import 'package:meowmonite/screens/home_screen.dart';
import 'package:meowmonite/screens/diary_screen.dart';
import 'package:meowmonite/screens/contest_screen.dart';
import 'package:meowmonite/screens/cat_doctor_screen.dart';

class MainScreen extends StatelessWidget {
  final MainController controller = Get.find();

  final List<Widget> pages = [
    HomeScreen(),
    DiaryScreen(),
    ContestScreen(),
    CatDoctorScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.updateIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: '다이어리'),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_events), label: '대회장'),
            BottomNavigationBarItem(icon: Icon(Icons.pets), label: '냥냥박사님'),
          ],
        ),
      ),
    );
  }
}
