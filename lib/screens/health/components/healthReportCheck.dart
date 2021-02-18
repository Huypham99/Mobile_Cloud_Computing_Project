import 'package:flutter/material.dart';
import 'package:ncovi_clone/global/style.dart';

class HealthReportCheck extends StatefulWidget {
  const HealthReportCheck(
      {Key key,
      this.label,
      this.value,
      this.onChanged,
      this.checkedListItem,
      this.disabled})
      : super(key: key);

  final String label;
  final bool value;
  final Function onChanged;
  final bool disabled;
  final List checkedListItem;

  @override
  _HealthReportCheckState createState() => _HealthReportCheckState();
}

class _HealthReportCheckState extends State<HealthReportCheck> {

  @override
  Widget build(BuildContext context) {

    bool isChecked = widget.checkedListItem.contains(widget.label);

    return InkWell(
      onTap: widget.onChanged,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
            height: 40.0,
            width: 180.0,
            decoration: BoxDecoration(
                color: isChecked
                    ? defaultBackgroundColor
                    : washBackgroundColor,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [lightShadow]),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                    height: 16.0,
                    width: 16.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color: isChecked
                                ? defaultPrimaryColor
                                : washPrimaryColor,
                            width: 1)),
                    child: Center(
                        child: Container(
                            height: 8.0,
                            width: 8.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.5),
                                color: isChecked
                                    ? defaultPrimaryColor
                                    : defaultBackgroundColor)))),
                smallSpace,
                Text(widget.label, style: defaultTextStyle)
              ]),
            )),
      ),
    );
  }

}
