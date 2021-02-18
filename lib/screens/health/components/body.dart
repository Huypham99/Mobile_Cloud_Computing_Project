import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncovi_clone/bloc/healthCheck/healthcheck_bloc.dart';
import 'package:ncovi_clone/global/style.dart';
import 'package:ncovi_clone/global/widgets/button.dart';
import 'package:ncovi_clone/screens/health/components/healthInforCard.dart';
import 'package:ncovi_clone/screens/health/components/healthReportCheck.dart';
import 'package:ncovi_clone/screens/health/components/modal.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Map<String, bool> values = {
    'Sốt': false,
    'Ho': false,
    'Khó thở': false,
    'Mệt mỏi': false,
    'Khỏe mạnh': false
  };

  var checkedListItem = [];

  bool disabled;

  void checkboxStateChange(key) {
    values[key] = !values[key];

    if (values[key] == true) {
      if (key == "Khỏe mạnh") {
        checkedListItem.clear();
        checkedListItem.add(key);
        values.forEach((key, value) {
          if (key != "Khỏe mạnh") values[key] = false;
        });
      } else
        checkedListItem.add(key);
    } else
      checkedListItem.remove(key);

    checkedListItem.isNotEmpty
        ? healthChecked(context)
        : healthUnchecked(context);
  }

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
              HealthReportCheck(
                  label: "Sốt",
                  value: values["Sốt"],
                  checkedListItem: checkedListItem,
                  onChanged: () {
                    setState(() {
                      checkboxStateChange("Sốt");
                    });
                  }),
              HealthReportCheck(
                  label: "Ho",
                  value: values["Ho"],
                  checkedListItem: checkedListItem,
                  onChanged: () {
                    setState(() {
                      checkboxStateChange("Ho");
                    });
                  })
            ]),
            smallSpace,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              HealthReportCheck(
                  label: "Khó thở",
                  value: values["Khó thở"],
                  checkedListItem: checkedListItem,
                  onChanged: () {
                    setState(() {
                      checkboxStateChange("Khó thở");
                    });
                  }),
              HealthReportCheck(
                  label: "Mệt mỏi",
                  value: values["Mệt mỏi"],
                  checkedListItem: checkedListItem,
                  onChanged: () {
                    setState(() {
                      checkboxStateChange("Mệt mỏi");
                    });
                  })
            ]),
            smallSpace,
            HealthReportCheck(
                label: "Khỏe mạnh",
                value: values["Khỏe mạnh"],
                checkedListItem: checkedListItem,
                onChanged: () {
                  setState(() {
                    checkboxStateChange("Khỏe mạnh");
                  });
                }),
            largeSpace,
            BlocBuilder<HealthcheckBloc, HealthcheckState>(
              builder: (context, state) {
                if (state is HealthcheckInitial) {
                  return buildButton(state.initial, context);
                } else if (state is CheckState) {
                  return buildButton(state.check, context);
                }
              },
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
            HealthInforCard(
                date: "20/1/2021",
                time: "10:30",
                status: "An toàn",
                content: "Bình thường"),
          ],
        ),
      ),
    );
  }

  void healthChecked(BuildContext context) {
    final _healthcheckBloc = context.read<HealthcheckBloc>();
    _healthcheckBloc.add(Healthchecked());
  }

  void healthUnchecked(BuildContext context) {
    final _healthcheckBloc = context.read<HealthcheckBloc>();
    _healthcheckBloc.add(Healthuncheck());
  }
}

Widget buildButton(state, context) {
  return PrimaryButton(
      label: "GỬI THÔNG TIN",
      disabled: !state,
      onPressed: () => {
            if (state == true)
              {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => Modal(
                        content: "Bạn đã gửi thông tin thành công !",
                        imageName: "Checked.png"))
              }
          });
}
