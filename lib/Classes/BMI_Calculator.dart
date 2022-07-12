import 'dart:math';
import 'package:flutter/material.dart';
import '../globals.dart' as global;
class BMI_Calculator{

  int height;
  int weight;
  late double bmi;

  BMI_Calculator(this.height,this.weight);


  String CalculateBMI(){
    bmi = weight/pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }
  String kShow_State(){
    if(bmi >= 25){
      return "OverWeight";
    }else if(bmi > 18.5){
      return "Normal";
    }else
    {
      return "UnderWeight";
    }
  }
  String kShow_Advice(){
    if(bmi >= 25){
      return "🙁   وزنك زائد عن الوزن الطبيعي, ننصحك بأداء بعض التمارين";
    }else if(bmi > 18.5){
      return "🥳   لديك وزن طبيعي, عمل جيد";
    }else
    {
      return "  💩  وزنك أقل من الوزن الطبيعي, ننصحك بالزيادة في الأكل الصحي";
    }
  }


  Color kStatus_Color(){
    if(bmi >= 25){
      return Color(0xFFFF0000);
    }else if(bmi > 18.5){
      return Color(0xFF00FF00);
    }else
    {
      return Color(0xFF8F00FF);
    }
  }



}