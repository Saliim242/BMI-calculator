import 'package:bmi_calculator/calculations/calculator_brain.dart';
import 'package:bmi_calculator/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/components.dart';
import '../constants/constants.dart';

// Crete Enum Class That gave MALE and Female as values
enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender? gender;
  int height = 180;
  int weight = 70;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: KAppBarStyle,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Expanded which has Male and Female
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCardWigdet(
                    onTaped: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    color: gender == Gender.male
                        ? AppColors.KActiveColor
                        : AppColors.KinActiveColor,
                    child: ReusableColumnWigdet(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCardWigdet(
                    onTaped: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    color: gender == Gender.female
                        ? AppColors.KActiveColor
                        : AppColors.KinActiveColor,
                    child: ReusableColumnWigdet(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCardWigdet(
              color: AppColors.KActiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT", style: KMainTextStyle),
                  // SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        "$height",
                        style: KNumberStyle,
                      ),
                      Text("cm", style: KMainTextStyle),
                    ],
                  ),
                  // Slider
                  SliderTheme(
                    data: SliderThemeData().copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: AppColors.kCustomBtnColor,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayColor: Color(0x29EB1555),
                      thumbColor: AppColors.KButtonColor,
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      max: 280,
                      min: 180,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCardWigdet(
                    color: AppColors.KActiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("WEIGHT", style: KMainTextStyle),
                        Text("$weight", style: KNumberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ReusableBtn(
                              icon: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  weight > 0 ? weight-- : null;
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(width: 15),
                            ReusableBtn(
                              icon: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCardWigdet(
                    color: AppColors.KActiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("AGE", style: KMainTextStyle),
                        Text("$age", style: KNumberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ReusableBtn(
                              icon: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  age > 10 ? age-- : null;
                                });
                              },
                            ),
                            SizedBox(width: 15),
                            ReusableBtn(
                              icon: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  age <= 80 ? age++ : null;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomBtn(
            text: "CALCULATE",
            onTaped: () {
              CalculatorBrain cal =
                  CalculatorBrain(height: height, weight: weight);
              cal.calculator();
              var route = MaterialPageRoute(
                builder: (_) => ResultPage(
                  weightType: cal.getResult(),
                  inter: cal.getInterpition(),
                  result: cal.calculator(),
                ),
              );
              Navigator.push(context, route);
            },
          ),
        ],
      ),
    );
  }
}
