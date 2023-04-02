import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveSliverAppBar extends StatelessWidget {
  const AdaptiveSliverAppBar({
    super.key,
    this.title,
    this.leading,
    this.previousPageTitle,
  });

  final Widget? title;
  final Widget? leading;
  final String? previousPageTitle;

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    return iOS
        ? CupertinoSliverNavigationBar(
            largeTitle: title,
            leading: leading,
            previousPageTitle: previousPageTitle,
          )
        : SliverAppBar(
            // title: title,
            leading: leading,
            flexibleSpace: FlexibleSpaceBar(
              title: title,
              background: const ColoredBox(
                color: Colors.grey,
                child: FlutterLogo(),
              ),
            ),
            expandedHeight: 200.0,
          );
  }
}
