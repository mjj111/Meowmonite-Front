import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'carousel_card.dart';

class CarouselSection extends StatelessWidget {
  final List<Map<String, String>> carouselItems;

  const CarouselSection({
    Key? key,
    required this.carouselItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardSize = screenWidth * 0.5;

    return CarouselSlider(
      options: CarouselOptions(
        height: cardSize * 1,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 7),
        viewportFraction: 0.5,
      ),
      items: carouselItems.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return CarouselCard(
              imageUrl: item["image"]!,
              title: item["title"]!,
              cardSize: cardSize,
            );
          },
        );
      }).toList(),
    );
  }
}
