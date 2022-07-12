import 'package:flutter/material.dart';
import 'constants.dart';




class IconBuilder extends StatelessWidget {
  IconBuilder({
    @required
    this.icon_label,
    this.genderIcon,
    this.icon_Color,


  });

  final IconData? genderIcon;
  final icon_label;
  final Color? icon_Color;




  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 56.0,
          color: icon_Color,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          icon_label,
          style: kLabelstyle,
        )
      ],
    );
  }
}
