import 'package:flutter/material.dart';
import '../widgets/general_card.dart';
import '../widgets/carousel_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> carouselItems = [
      {"image": "https://picsum.photos/id/237/200/300", "title": "귀여운 고양이 1등"},
      {"image": "https://picsum.photos/id/238/200/300", "title": "귀여운 고양이 2등"},
      {"image": "https://picsum.photos/id/239/200/300", "title": "귀여운 고양이 3등"},
    ];

    final List<Map<String, String>> diaryContents = [
      {
        "title": "2024년 12월 20일",
        "description": "오늘의 다이어리를 작성하세요.",
        "imageUrl": "https://picsum.photos/200",
      },
      {
        "title": "2024년 12월 20일",
        "description": "오늘의 다이어리를 작성하세요.",
        "imageUrl": "https://picsum.photos/200",
      },
    ];

    final List<Map<String, String>> catDoctorsContents = [
      {
        "title": "저희 집 고양이가 츄르를 너무 좋아해요",
        "description": "돼냥이가 되면 어떡하죠?",
        "imageUrl": "https://picsum.photos/200",
      },
      {
        "title": "저희 집 고양이가 츄르를 너무 좋아해요",
        "description": "돼냥이가 되면 어떡하죠?",
        "imageUrl": "https://picsum.photos/200",
      },
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Diary Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "김명준",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const TextSpan(
                      text: ', 집사님의 최근 다이어리 📝',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ...diaryContents.map(
              (content) => GeneralCard(
                content: CardContent(
                  title: content["title"]!,
                  description: content["description"]!,
                  imageUrl: content["imageUrl"]!,
                ),
                onTap: () {
                  print('${content["title"]} 카드 클릭됨');
                },
              ),
            ),
            const SizedBox(height: 20),

            // Cat Doctors Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.network(
                    'https://picsum.photos/id/1005/50/50',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      '고양 박사님! 질문 있어요~! 🐾',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ...catDoctorsContents.map(
              (content) => GeneralCard(
                content: CardContent(
                  title: content["title"]!,
                  description: content["description"]!,
                  imageUrl: content["imageUrl"]!,
                ),
                onTap: () {
                  print('${content["title"]} 카드 클릭됨');
                },
              ),
            ),
            const SizedBox(height: 20),

            // 고양이 대회장
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/contest/aa.jpg",
                    width: 50, // 원하는 너비 설정
                    height: 50, // 원하는 높이 설정
                    fit: BoxFit.cover, // 이미지를 컨테이너 크기에 맞게 자르기
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      '명예 고양이 전당 💎',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Carousel Section
            CarouselSection(
              carouselItems: carouselItems,
            ),
          ],
        ),
      ),
    );
  }
}
