import 'package:flutter/material.dart';
import 'package:ncovi_clone/global/style.dart';
import 'package:ncovi_clone/global/widgets/button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0),
      child: Container(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  height: 40.0,
                  child: Text("Theo dõi sức khỏe", style: titleLargeStyle)),
            ),
            smallSpace,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              HealthReportCheck(label: "Sốt"),
              HealthReportCheck(label: "Ho")
            ]),
            smallSpace,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              HealthReportCheck(label: "Khó thở"),
              HealthReportCheck(label: "Mệt mỏi")
            ]),
            smallSpace,
            HealthReportCheck(label: "Khỏe mạnh"),
            largeSpace,
            PrimaryButton(
              label: "GỬI THÔNG TIN",
            ),
          largeSpace,
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  height: 40.0,
                  child: Text("Lịch sử theo dõi sức khỏe",
                      style: titleLargeStyle)),
            ),
            smallSpace,
            HealthInfor(),
            HealthInfor()
          ],
        ),
      ),
    );
  }
}

class HealthInfor extends StatelessWidget {
  const HealthInfor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Date", style: defaultTextStyle),
          mediumSpace,
          Container(
            decoration: BoxDecoration(
                color: defaultBackgroundColor,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [lightShadow]),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 12.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            decoration: BoxDecoration(
                                color: primaryGreenColor,
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("An toàn",
                                  style: reverseTextStyle),
                            )),
                      ),
                      Text("Time", style: defaultTextStyle)
                    ],
                  ),
                  mediumSpace,
                  Text("Thông tin sức khỏe", style: titleMediumStyle)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HealthReportCheck extends StatelessWidget {
  const HealthReportCheck({Key key, this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
          height: 40.0,
          width: 180.0,
          decoration: BoxDecoration(
              color: defaultBackgroundColor,
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
                      border:
                          Border.all(color: defaultPrimaryColor, width: 1))),
              smallSpace,
              Text(label, style: defaultTextStyle)
            ]),
          )),
    );
  }
}
