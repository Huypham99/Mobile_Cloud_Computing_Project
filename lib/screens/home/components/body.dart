import 'package:flutter/material.dart';
import 'package:ncovi_clone/global/style.dart';

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
                  child: Text("Thông tin dịch bệnh", style: titleLargeStyle)),
            ),
            smallSpace,
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Tab(
                          title: "Viet Nam",
                        ),
                        smallSpace,
                        Tab(title: "The gioi")
                      ],
                    ),
                  ),
                  Icon(Icons.refresh_rounded, color: Colors.purple[700])
                ],
              ),
            ),
            mediumSpace,
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 24.0,
                      child:
                          Text("Thông tin Việt Nam", style: titleMediumStyle)),
                  Container(
                      height: 24.0,
                      child: Text("Xem chi tiết", style: linkTextStyle)),
                ],
              ),
            ),
            mediumSpace,
            Container(
                child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatisticCard(quantity: "200.000", cardType: "Tử vong"),
                      StatisticCard(quantity: "2.100.000", cardType: "Nghiêm trọng")
                    ]),
                mediumSpace,
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatisticCard(quantity: "30.000", cardType: "Nhiễm bệnh"),
                      StatisticCard(quantity: "100.000", cardType: "Hồi phục")
                    ])
              ],
            )),
            mediumSpace,
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    child: Text("Cập nhật: 9:30, 20/12",
                        style: defaultTextStyle))),
            largeSpace,
            PrimaryButton(),
            mediumSpace,
            PrimaryButton()
          ],
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
  }) : super(key: key);

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
            onPressed: () {},
            child: Text("KHAI BAO Y TE TU NGUYEN", style: reverseTextStyle)));
  }
}

Color switchColor(String cardType) {
  switch (cardType) {
    case "Tử vong":
      {
        return primaryRedColor;
      }
      break;
    case "Nghiêm trọng":
      {
        return primaryOrangeColor;
      }
      break;
    case "Nhiễm bệnh":
      {
        return darkYellowColor;
      }
      break;
    case "Hồi phục":
      {
        return primaryGreenColor;
      }
      break;
  }
}

class StatisticCard extends StatelessWidget {
  const StatisticCard({Key key, this.quantity, this.cardType})
      : super(key: key);

  final String quantity;
  final String cardType;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180.0,
        height: 104.0,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: defaultBackgroundColor,
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                color: washPrimaryColor.withOpacity(0.25),
                spreadRadius: 10,
                blurRadius: 2.5,
                offset: Offset(0, 0),
              ),
            ]),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(quantity,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: switchColor(cardType))),
              smallSpace,
              Text("Ca $cardType",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: switchColor(cardType)))
            ],
          ),
        ));
  }
}

class Tab extends StatelessWidget {
  const Tab({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: primaryRedColor),
        height: 40.0,
        child: FlatButton(
          onPressed: () {},
          child: Text(title, style: reverseTextStyle),
        ));
  }
}
