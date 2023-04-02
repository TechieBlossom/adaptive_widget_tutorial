import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum AdaptiveButtonType {
  filled,
  outlined,
  text,
  elevated,
}

class AdaptiveButton extends StatelessWidget {
  const AdaptiveButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.adaptiveButtonType = AdaptiveButtonType.filled,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final AdaptiveButtonType adaptiveButtonType;

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;

    if (iOS) {
      switch (adaptiveButtonType) {
        case AdaptiveButtonType.text:
          return CupertinoButton(onPressed: onPressed, child: child);
        default:
          return CupertinoButton.filled(onPressed: onPressed, child: child);
      }
    } else {
      switch (adaptiveButtonType) {
        case AdaptiveButtonType.filled:
          return FilledButton(
            onPressed: onPressed == null ? null : () => onPressed?.call(),
            child: child,
          );
        case AdaptiveButtonType.outlined:
          return OutlinedButton(
            onPressed: onPressed == null ? null : () => onPressed?.call(),
            child: child,
          );
        case AdaptiveButtonType.text:
          return TextButton(
            onPressed: onPressed == null ? null : () => onPressed?.call(),
            child: child,
          );
        case AdaptiveButtonType.elevated:
          return ElevatedButton(
            onPressed: onPressed == null ? null : () => onPressed?.call(),
            child: child,
          );
      }
    }
  }
}
