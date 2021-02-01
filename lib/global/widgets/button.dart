import 'package:flutter/material.dart';
import 'package:ncovi_clone/global/style.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
    this.label,
    this.onPressed
  }) : super(key: key);

  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 64.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: defaultPrimaryColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: FlatButton(
            onPressed: onPressed,
            child: Text(label, style: reverseTextStyle)));
  }
}