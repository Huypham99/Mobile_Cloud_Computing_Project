import 'package:flutter/material.dart';
import 'package:ncovi_clone/global/style.dart';

class HealthInforCard extends StatelessWidget {
  const HealthInforCard(
      {Key key, this.date, this.status, this.time, this.content})
      : super(key: key);

  final String date;
  final String status;
  final String time;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(date, style: defaultTextStyle),
          mediumSpace,
          Container(
            decoration: BoxDecoration(
                color: defaultBackgroundColor,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [lightShadow]),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
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
                              child: Text(status, style: reverseTextStyle),
                            )),
                      ),
                      Text(time, style: defaultTextStyle)
                    ],
                  ),
                  mediumSpace,
                  Row(
                    children: [
                      Text("Thông tin sức khỏe  ", style: defaultTextStyle),
                      Text(content, style: titleMediumStyle)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
