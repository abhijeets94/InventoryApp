import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:inventory/homescreen.dart';
import 'package:inventory/routes.dart';

void main() {
  runApp(const InventoryApp());
}

class InventoryApp extends StatelessWidget {
  const InventoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.aboreto().fontFamily),
      onGenerateRoute: route,
      initialRoute: HomeScreen.routeName,
    );
  }
}
