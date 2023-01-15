import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ReusableColumnWigdet extends StatelessWidget {
  ReusableColumnWigdet({required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(height: 15),
        Text(text, style: KMainTextStyle),
      ],
    );
  }
}
