import 'package:flutter/material.dart';
import 'package:ncovi_clone/global/style.dart';


class BottomNav extends StatelessWidget {
  const BottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56.0,
        width: double.infinity,
        color: defaultBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconLabel(label: "Trang chủ"),
              IconLabel(label: "Sức khỏe"),
              IconLabel(label: "Phản ánh"),
              IconLabel(label: "Danh mục")
            ],
          ),
        ));
  }
}

class IconLabel extends StatelessWidget {
  const IconLabel(
      {Key key,
      // this.icon,
      this.label})
      : super(key: key);

  // final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(Icons.home, color: defaultTextColor),
          Text(label, style: defaultTextStyle)
        ],
      ),
    );
  }
}