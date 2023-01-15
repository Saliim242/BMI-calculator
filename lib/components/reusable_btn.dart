import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ReusableBtn extends StatelessWidget {
  ReusableBtn({required this.icon, this.onpressed});
  final IconData icon;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      child: Icon(
        icon,
        color: Colors.white,
        size: 35,
      ),
      fillColor: AppColors.kCustomBtnColor,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
