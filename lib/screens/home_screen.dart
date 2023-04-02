import 'package:adaptive_widgets/widgets/appbar/adaptive_app_bar.dart';
import 'package:adaptive_widgets/widgets/list/adaptive_list.dart';
import 'package:adaptive_widgets/widgets/scaffold/adaptive_scaffold.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    return AdaptiveScaffold(
      adaptiveAppBar: AdaptiveAppBar(
        title: const Text('Adaptive Widgets App'),
        iOS: iOS,
      ),
      child: const AdaptiveList(),
    );
  }
}
