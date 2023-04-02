import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveSlider extends StatelessWidget {
  const AdaptiveSlider({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final double value;
  final ValueChanged<double>? onChanged;

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    return iOS
        ? CupertinoSlider(
            value: value,
            onChanged:
                onChanged == null ? null : (value) => onChanged?.call(value),
          )
        : Slider(
            value: value,
            onChanged:
                onChanged == null ? null : (value) => onChanged?.call(value),
          );
  }
}
