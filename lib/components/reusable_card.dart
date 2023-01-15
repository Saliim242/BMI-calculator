import 'package:flutter/material.dart';

class ReusableCardWigdet extends StatelessWidget {
  ReusableCardWigdet({
    required this.color,
    this.child,
    this.onTaped,
  });
  final Color color;
  final Widget? child;
  final VoidCallback? onTaped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaped,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
