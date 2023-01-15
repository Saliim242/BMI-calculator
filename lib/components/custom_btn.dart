import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomBtn extends StatelessWidget {
  CustomBtn({required this.text, required this.onTaped});
  final String text;
  final VoidCallback onTaped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaped,
      child: Container(
        height: 80,
        padding: EdgeInsets.only(bottom: 10),
        child: Center(
          child: Text(text, style: KCalculatorStyle),
        ),
        decoration: BoxDecoration(
          color: AppColors.KButtonColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
      ),
    );
  }
}
