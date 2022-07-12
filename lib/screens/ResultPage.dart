import 'package:flutter/material.dart';
import 'package:healthy_tools/screens/InputPage.dart';
import 'package:healthy_tools/utilities/BottomContainer.dart';
import 'package:healthy_tools/utilities/constants.dart';
import 'package:healthy_tools/globals.dart';

class ResultPage extends StatelessWidget {
  String? bmi_Result;
  String? status;
  String? advice;
  Color? colour;
  ResultPage(
      {required this.bmi_Result,
      required this.status,
      required this.advice,
      required this.colour});
  @override
  Widget build(BuildContext context) {
    Widget sizedBox() {
      return SizedBox(
        height: 25.0,
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "نتيجة مؤشر كتلة الجسم",
          style: kappBar_Style,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Color(0xFF20857D),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$status",
                      style: TextStyle(
                        color: colour,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    sizedBox(),
                    const Text(
                      "كتلة الجسم لديك",
                      style: kLabelstyle,
                    ),
                    sizedBox(),
                    Text(
                      bmi_Result.toString(),
                      style: const TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                    sizedBox(),
                    Text("$advice  ", style: kBodyTextStyle),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomContainer(
                ktext: "الرجوع الى حاسبة مؤشر كتلة الجسم",
                tap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InputPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
