import 'package:adaptive_widgets/widgets/appbar/adaptive_app_bar.dart';
import 'package:adaptive_widgets/widgets/button/adaptive_button.dart';
import 'package:adaptive_widgets/widgets/scaffold/adaptive_scaffold.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    return AdaptiveScaffold(
      adaptiveAppBar: AdaptiveAppBar(iOS: iOS),
      child: Center(
        child: Column(
          children: [
            AdaptiveButton(
              onPressed: () => print('Pressed'),
              adaptiveButtonType: AdaptiveButtonType.text,
              child: const Text('Text Button'),
            ),
            const Divider(color: Colors.transparent),
            AdaptiveButton(
              onPressed: () => print('Pressed'),
              adaptiveButtonType: AdaptiveButtonType.outlined,
              child: const Text('Outlined Button'),
            ),
            const Divider(color: Colors.transparent),
            AdaptiveButton(
              onPressed: () => print('Pressed'),
              adaptiveButtonType: AdaptiveButtonType.filled,
              child: const Text('Filled Button'),
            ),
            const Divider(color: Colors.transparent),
            AdaptiveButton(
              onPressed: () => print('Pressed'),
              adaptiveButtonType: AdaptiveButtonType.elevated,
              child: const Text('Elevated Button'),
            ),
          ],
        ),
      ),
    );
  }
}
