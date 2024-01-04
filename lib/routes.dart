import 'package:flutter/material.dart';
import 'package:inventory/details_screen.dart';
import 'package:inventory/homescreen.dart';

Route route(RouteSettings settings) {
  switch (settings.name) {
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    case DetailsScreen.routeName:
      var args = settings.arguments as Map;

      String title = args['title'];
      String image = args['image'];

      return MaterialPageRoute(
        builder: (context) => DetailsScreen(
          image: image,
          title: title,
        ),
      );

    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: Center(child: Text("INVALID PAGE")),
              ));
  }
}
