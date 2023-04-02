import 'package:adaptive_widgets/widgets/appbar/adaptive_app_bar.dart';
import 'package:adaptive_widgets/widgets/scaffold/adaptive_scaffold.dart';
import 'package:adaptive_widgets/widgets/textfield/adaptive_textfield.dart';
import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    return AdaptiveScaffold(
      adaptiveAppBar: AdaptiveAppBar(iOS: iOS),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AdaptiveTextField(),
        ),
      ),
    );
  }
}
