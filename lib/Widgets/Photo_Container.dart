import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Theme/container_theme.dart';
import '../Theme/text.dart';

class PhotoContainer extends StatelessWidget {
  final Map<String, String> cardData;

  const PhotoContainer({
    Key? key,
    required this.cardData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ContainerTheme.getContainerBoxDecoration(
        cards: [cardData], // Wrap cardData in a list since it expects a list of cards
        index: 0, // Index is always 0 since we're dealing with a single card
      ),
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: Text(
          cardData["AlbumName"]!,
          style: TextThemes.getTextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
