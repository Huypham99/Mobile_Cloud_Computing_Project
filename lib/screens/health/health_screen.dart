import 'package:flutter/material.dart';
import 'package:ncovi_clone/global/widgets/bottom_nav.dart';
import 'components/body.dart';

class HealthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNav(),
    );
  }
}

