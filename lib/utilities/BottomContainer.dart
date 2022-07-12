import 'package:flutter/material.dart';


class BottomContainer extends StatelessWidget {

  BottomContainer( { @required this.ktext,this.tap} );
  final  String? ktext;
  final tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(25),
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFF20857D),
        ),
        child: Center(
          child: Text(
            "$ktext",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
