import 'package:adaptive_widgets/widgets/appbar/adaptive_app_bar.dart';
import 'package:adaptive_widgets/widgets/scaffold/adaptive_scaffold.dart';
import 'package:adaptive_widgets/widgets/slider/adaptive_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _value = 0.7;

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    return AdaptiveScaffold(
      adaptiveAppBar: AdaptiveAppBar(iOS: iOS),
      child: Center(
        child: AdaptiveSlider(
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ),
    );
  }
}
