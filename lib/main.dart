import 'package:adaptive_widgets/screens/home_screen.dart';
import 'package:adaptive_widgets/widgets/app/adaptive_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdaptiveWidgetsApp());
}

class AdaptiveWidgetsApp extends StatelessWidget {
  const AdaptiveWidgetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AdaptiveApp(
      home: HomeScreen(),
    );
  }
}
