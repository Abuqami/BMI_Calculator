import 'package:flutter/material.dart';
import 'package:healthy_tools/screens/ResultPage.dart';

import '../utilities/card.dart';
import '../utilities/constants.dart';
import '../utilities/BottomContainer.dart';
import '../utilities/IconBuilder.dart';
import '../Classes/BMI_Calculator.dart';
import '../utilities/Slider.dart';
import '../globals.dart' as global;



Color activeColor = Colors.black;
Color inactiveColor = Colors.white;
bool color_trigger = true;


class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "حاسبة مؤشر كتلة الجسم",
          style: kappBar_Style,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: CardBuilder(
                    cardChild: IconBuilder(
                      icon_label: "رجل",
                      genderIcon: Icons.male,
                      icon_Color: color_trigger ? activeColor : inactiveColor,
                    ),
                    tap: () {
                      setState(
                        () {
                          color_trigger = true;
                          print("male");
                        },
                      );
                    },
                  ),
                ),
                Expanded(
                  child: CardBuilder(
                    cardChild: IconBuilder(
                      icon_label: "إمرأة",
                      genderIcon: Icons.female,
                      icon_Color: !color_trigger ? activeColor : inactiveColor,
                    ),
                    tap: () {
                      setState(
                        () {
                          color_trigger = false;
                          print("female");
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            Expanded(
              child: CardBuilder(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    slider(
                        property: global.height,
                        label: "الطول",
                        unit: " سم",
                        max: 220,
                        min: 120,
                    trigger: true,)
                  ],
                ),
              ),
            ),
            Expanded(
              child: CardBuilder(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    slider(
                        property: global.weight,
                        label: "الوزن",
                        unit: " كج",
                        max: 150,
                        min: 45,
                    trigger: false,)
                  ],
                ),
              ),
            ),

            BottomContainer(
              ktext: "أحسب مؤشر كتلة الجسم",
              tap: () {
                BMI_Calculator bmi =
                    BMI_Calculator(global.height, global.weight);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmi_Result: bmi.CalculateBMI(),
                      status: bmi.kShow_State(),
                      advice: bmi.kShow_Advice(),
                      colour: bmi.kStatus_Color(),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
