import 'package:flutter/material.dart';
import 'package:inventory/homescreen.dart';

Route route(RouteSettings settings) {
  switch (settings.name) {
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );

    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: Center(child: Text("INVALID PAGE")),
              ));
  }
}
