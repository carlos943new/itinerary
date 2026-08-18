import 'package:flutter/material.dart';
import 'package:travel_itinerary/app/router.dart';
import 'package:travel_itinerary/app/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Auth App',
      routerConfig: router,
      theme: appTheme,
    );
  }
}
