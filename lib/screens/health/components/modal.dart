import 'package:flutter/material.dart';
import 'package:ncovi_clone/global/style.dart';

class Modal extends StatelessWidget {
  const Modal(
      {Key key, this.imageName, this.content, this.isAction, this.actionLabel})
      : super(key: key);

  final String imageName;
  final String content;
  final bool isAction;
  final String actionLabel;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          height: 200.0,
          decoration: BoxDecoration(
              color: defaultBackgroundColor,
              borderRadius: BorderRadius.circular(4)),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 24.0),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.close, color: placeholderTextColor)),
                mediumSpace,
                Container(
                  height: 56.0,
                  width: 56.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/$imageName"))),
                ),
                largeSpace,
                Text(content, style: defaultTextStyle),
                // isAction == true
                //     ? PrimaryButton(label: actionLabel)
                //     : Text("haha")
              ],
            ),
          )),
    );
  }
}