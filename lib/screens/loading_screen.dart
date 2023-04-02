import 'package:adaptive_widgets/widgets/appbar/adaptive_app_bar.dart';
import 'package:adaptive_widgets/widgets/loading/adaptive_loading_indicator.dart';
import 'package:adaptive_widgets/widgets/scaffold/adaptive_scaffold.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    return AdaptiveScaffold(
      adaptiveAppBar: AdaptiveAppBar(iOS: iOS),
      child: const Center(
        child: AdaptiveLoadingIndicator(),
      ),
    );
  }
}
