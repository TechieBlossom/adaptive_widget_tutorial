import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveLoadingIndicator extends StatelessWidget {
  const AdaptiveLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    return iOS
        ? const CupertinoActivityIndicator(
            radius: 50,
            color: Colors.greenAccent,
          )
        : const CircularProgressIndicator(
            color: Colors.greenAccent,
          );
  }
}
