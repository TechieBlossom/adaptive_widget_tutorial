import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveAppBar extends StatelessWidget
    with PreferredSizeWidget, ObstructingPreferredSizeWidget {
  const AdaptiveAppBar({
    super.key,
    required this.iOS,
    this.title,
    this.shouldObstruct = true,
    this.leading,
    this.previousPageTitle,
  });

  final Widget? title;
  final bool shouldObstruct;
  final bool iOS;
  final Widget? leading;
  final String? previousPageTitle;

  @override
  Widget build(BuildContext context) {
    return iOS
        ? CupertinoNavigationBar(
            middle: title,
            automaticallyImplyLeading: true,
            automaticallyImplyMiddle: true,
            previousPageTitle: previousPageTitle,
            leading: leading,
          )
        : AppBar(
            title: title,
            automaticallyImplyLeading: true,
            leading: leading,
          );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        iOS ? kMinInteractiveDimensionCupertino : kToolbarHeight,
      );

  @override
  bool shouldFullyObstruct(BuildContext context) => shouldObstruct;
}
