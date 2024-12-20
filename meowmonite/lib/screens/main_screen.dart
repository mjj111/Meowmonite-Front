import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meowmonite/controllers/main_controller.dart';
import 'package:meowmonite/screens/home_screen.dart';
import 'package:meowmonite/screens/diary_screen.dart';
import 'package:meowmonite/screens/contest_screen.dart';
import 'package:meowmonite/screens/cat_doctor_screen.dart';

class MainScreen extends StatelessWidget {
  final MainController controller = Get.put(MainController());

  final List<Widget> pages = [
    HomeScreen(),
    DiaryScreen(),
    ContestScreen(),
    CatDoctorScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => pages[controller.currentIndex.value],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex.value,
          onTap: controller.updateIndex,
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: Colors.orangeAccent,
          items: [
            _buildBottomNavigationBarItem(Icons.home, '홈'),
            _buildBottomNavigationBarItem(Icons.book, '다이어리'),
            _buildBottomNavigationBarItem(Icons.emoji_events, '대회장'),
            _buildBottomNavigationBarItem(Icons.pets, '냥냥 박사님'),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
