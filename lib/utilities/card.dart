import 'package:flutter/material.dart';

class CardBuilder extends StatelessWidget {
  CardBuilder({this.cardChild, this.tap});

  final cardChild;
  final  tap;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(35),
        height: 170,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xFF20857D),
        ),
      ),
    );
  }
}
