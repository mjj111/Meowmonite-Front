// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../widgets/general_card.dart'; // GeneralCard를 import

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          GeneralCard(
            content: CardContent(
              title: '2024년 12월 20일',
              description: '오늘의 다이어리를 작성하세요.',
              imageUrl: 'https://picsum.photos/200',
            ),
            onTap: () {
              print('다이어리 카드 클릭됨');
            },
          ),
          GeneralCard(
            content: CardContent(
              title: '저희 집 고양이가 츄르를 너무 좋아해요',
              description: '고양이에 대해 궁금한 것을 물어보세요.',
              imageUrl: 'https://picsum.photos/200',
            ),
            onTap: () {
              print('냥냥박사님 카드 클릭됨');
            },
          ),
        ],
      ),
    );
  }
}
