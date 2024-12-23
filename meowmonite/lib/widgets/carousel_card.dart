import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double cardSize;

  const CarouselCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.cardSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
                maxLines: 1, // 제목 한 줄로 제한
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16.0),
            ),
            child: Image.network(
              imageUrl,
              height: cardSize * 0.8, // 이미지 높이를 제한
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
