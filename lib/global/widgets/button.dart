import 'package:flutter/material.dart';
import 'package:ncovi_clone/global/style.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key key, this.label, this.onPressed, this.disabled})
      : super(key: key);

  final String label;
  final Function onPressed;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 64.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: disabled == false ? defaultPrimaryColor : borderColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: FlatButton(
            onPressed: disabled == false ? onPressed : null,
            child: Text(label,
                style:
                    disabled == false ? reverseTextStyle : labelTextStyle)));
  }
}
