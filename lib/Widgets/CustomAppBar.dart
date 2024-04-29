import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gallery/Theme/text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(


      title: Text(
        "Photo Gallery",
        style: TextThemes.getTextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 20,
          letterSpacing: 0.5,
        ),
      ),
      centerTitle: true,
      actions: [
        PopupMenuButton(
          itemBuilder: (context) => [],
          color: Colors.white,
          iconSize: 32,
        )
      ],
      backgroundColor: const Color(0xFF2CBB00),
    );
  }
}
