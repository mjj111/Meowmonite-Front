import 'package:flutter/material.dart';

class CardContent {
  final String title;
  final String description;
  final String imageUrl;

  CardContent({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

class GeneralCard extends StatelessWidget {
  final CardContent content;
  final VoidCallback onTap;

  const GeneralCard({
    required this.content,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Card(
      color: Colors.white,
      elevation: 4,
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: _buildCardDetails(context),
              ),
              SizedBox(width: 8.0),
              _buildCardImage(screenWidth),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCardDetails(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          content.title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 8.0),
        Text(
          content.description,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }

  Widget _buildCardImage(double screenWidth) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        content.imageUrl,
        width: screenWidth * 0.15,
        height: screenWidth * 0.15,
        fit: BoxFit.cover,
      ),
    );
  }
}
