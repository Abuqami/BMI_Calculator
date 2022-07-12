import 'package:flutter/material.dart';
import 'constants.dart';
import '../globals.dart' as global;

class slider extends StatefulWidget {

  int property;
  final String label;
  final String unit;
  final double min;
  final double max;
  final bool trigger;

  slider({required this.property, required this.label,required this.unit, required this.max,required this.min, required this.trigger});

  @override
  State<slider> createState() => _sliderState();
}
class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    int currentvalue = widget.property;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              widget.property.toString(),//هنا شغال %100 عشانه String
              style: kAllnumberstyle,
            ),
            Text(
              widget.unit.toString(),
              style: kLabelstyle,
            ),
          ],
        ),
        Text(
          widget.label,
          style: kLabelstyle,
        ),

        Slider(

          //هنا ما اقدر احط المتغير الdouble
          value: widget.property.toDouble(),
          min: widget.min,
          max: widget.max,
          activeColor: Colors.black,
          inactiveColor: Colors.white,
          onChanged: (double value) {
            setState(
                  () {
                //هنا برضوا
                //error: 'height' can't be used as a setter because it's final. (assignment_to_final at [health_tools] lib\Slider.dart:57) الايرور
                widget.property = value.toInt();
                widget.trigger? global.height = widget.property : global.weight = widget.property;

              },
            );
          },
        ),
      ],
    );
  }
}


