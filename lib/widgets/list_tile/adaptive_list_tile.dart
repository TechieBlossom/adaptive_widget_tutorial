import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveListTile extends StatelessWidget {
  const AdaptiveListTile({
    super.key,
    required this.title,
    this.onItemTap,
    this.subtitle,
    this.additionalInfo,
    this.leading,
    this.trailing,
    this.leadingToTitleGap = 12,
    this.backgroundColor,
    this.activeBackgroundColor,
    this.padding,
  });

  final VoidCallback? onItemTap;
  final Widget title;
  final Widget? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final Widget? additionalInfo;
  final double? leadingToTitleGap;
  final Color? backgroundColor;
  final Color? activeBackgroundColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    final leadingToTitle = leadingToTitleGap ?? (iOS ? 12 : 16);
    return iOS
        ? CupertinoListTile(
            title: title,
            subtitle: subtitle,
            onTap: () => onItemTap?.call(),
            trailing: trailing,
            additionalInfo: additionalInfo,
            leadingToTitle: leadingToTitle,
            leading: leading,
            backgroundColorActivated: activeBackgroundColor,
            backgroundColor: backgroundColor,
            padding: padding,
          )
        : ListTile(
            title: title,
            subtitle: subtitle,
            onTap: () => onItemTap?.call(),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                additionalInfo ?? const SizedBox.shrink(),
                trailing ?? const SizedBox.shrink(),
              ],
            ),
            leading: leading,
            horizontalTitleGap: leadingToTitle,
            tileColor: backgroundColor,
            splashColor: activeBackgroundColor,
            contentPadding: padding,
          );
  }
}
