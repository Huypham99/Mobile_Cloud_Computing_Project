import 'package:flutter/material.dart';
import 'components/body.dart';
import 'package:ncovi_clone/global/style.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: Container(
              height: 56.0,
              width: double.infinity,
              color: defaultBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(children: [
                    Icon(Icons.home, color: defaultTextColor),
                    Text("Home", style: defaultTextStyle)
                  ],),),
                  Container(
                    child: Column(children: [
                    Icon(Icons.home, color: defaultTextColor),
                    Text("Home", style: defaultTextStyle)
                  ],),),
                  Container(
                    child: Column(children: [
                    Icon(Icons.home, color: defaultTextColor),
                    Text("Home", style: defaultTextStyle)
                  ],),),
                  Container(
                    child: Column(children: [
                    Icon(Icons.home, color: defaultTextColor),
                    Text("Home", style: defaultTextStyle)
                  ],),)
                ],
            ),
              )),
    );
  }
}