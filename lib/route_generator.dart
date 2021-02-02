import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ncovi_clone/screens/health/health_screen.dart';
import 'package:ncovi_clone/screens/home/home_screen.dart';

class RouteGenerator {
  static const homePage = '/';
  static const healthPage = '/health';
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteGenerator.homePage:
        return MaterialPageRoute<dynamic>(builder: (_) => HomeScreen());
      case RouteGenerator.healthPage:
        return MaterialPageRoute<dynamic>(builder: (_) => HealthScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text('Error')),
        body: Center(child: Text('ERROR')),
      );
    });
  }
}
