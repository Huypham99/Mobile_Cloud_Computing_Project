import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncovi_clone/bloc/healthCheck/healthcheck_bloc.dart';
import 'package:ncovi_clone/global/widgets/bottom_nav.dart';
import 'components/body.dart';

class HealthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HealthcheckBloc(),
        child: Body(),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
