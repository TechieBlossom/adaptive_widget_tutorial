import 'package:adaptive_widgets/widgets/appbar/adaptive_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveScaffold extends StatelessWidget {
  const AdaptiveScaffold({
    super.key,
    required this.child,
    this.adaptiveAppBar,
    this.scaffoldBackgroundColor,
  });

  final Widget child;
  final AdaptiveAppBar? adaptiveAppBar;
  final Color? scaffoldBackgroundColor;

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    return iOS
        ? CupertinoPageScaffold(
            backgroundColor: scaffoldBackgroundColor,
            navigationBar: adaptiveAppBar,
            child: child,
          )
        : Scaffold(
            // drawer: Custom widget,
            // bottomNavigationBar: ,
            appBar: adaptiveAppBar,
            backgroundColor: scaffoldBackgroundColor,
            body: child,
          );
  }
}
