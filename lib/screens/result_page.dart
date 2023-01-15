import 'package:bmi_calculator/components/components.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.weightType, required this.result, required this.inter});
  final String weightType;
  final String result;
  final inter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result Page", style: KAppBarStyle),
        leading: Icon(Icons.menu_outlined),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: KResultStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCardWigdet(
              color: AppColors.KActiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    weightType.toUpperCase(),
                    style: KWeightStyle,
                  ),
                  Text(
                    result,
                    style: KResulNStyle,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      inter,
                      textAlign: TextAlign.center,
                      style: KInter,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomBtn(
              text: "RE-CALCULATE",
              onTaped: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
