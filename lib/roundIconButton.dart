import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onpress});

  final IconData icon;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.6,
      onPressed: onpress,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}