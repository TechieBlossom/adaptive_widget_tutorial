import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveSwitch extends StatelessWidget {
  const AdaptiveSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    return iOS
        ? CupertinoSwitch(
            value: value,
            onChanged:
                onChanged == null ? null : (value) => onChanged?.call(value),
          )
        : Switch(
            value: value,
            onChanged:
                onChanged == null ? null : (value) => onChanged?.call(value),
          );
  }
}
