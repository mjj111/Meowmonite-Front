import 'package:get/get.dart';

class MainController extends GetxController {
  // 현재 선택된 탭의 인덱스
  var currentIndex = 0.obs;

  void updateIndex(int index) {
    currentIndex.value = index;
  }
}
