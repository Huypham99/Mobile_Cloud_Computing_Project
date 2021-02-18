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
              IconLabel(
                  label: "Trang chủ",
                  inactiveIcon: "Home.png",
                  activeIcon: "HomeActive.png",
                  routeName: "/",
                  index: 0),
              IconLabel(
                  label: "Sức khỏe",
                  inactiveIcon: "Health.png",
                  activeIcon: "HealthActive.png",
                  routeName: "/health",
                  index: 1)
            ],
          ),
        ));
  }
}

class IconLabel extends StatefulWidget {
  const IconLabel(
      {Key key,
      this.label,
      this.inactiveIcon,
      this.activeIcon,
      this.routeName,
      this.index})
      : super(key: key);

  final String label;
  final String inactiveIcon;
  final String activeIcon;
  final String routeName;
  final int index;

  @override
  _IconLabelState createState() => _IconLabelState();
}

int selectedItem = 0;

class _IconLabelState extends State<IconLabel> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(widget.routeName);
        setState(() {
          selectedItem = widget.index;
        });
      },
      child: Container(
        child: Column(
          children: [
            Container(
              height: 16.0,
              width: 16.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: selectedItem == widget.index
                          ? AssetImage("assets/images/${widget.activeIcon}")
                          : AssetImage("assets/images/${widget.inactiveIcon}"))),
            ),
            smallSpace,
            Text(widget.label,
                style: selectedItem == widget.index
                    ? selectedLabelTextStyle
                    : labelTextStyle)
          ],
        ),
      ),
    );
  }
}
