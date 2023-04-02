import 'package:adaptive_widgets/widgets/appbar/adaptive_app_bar.dart';
import 'package:adaptive_widgets/widgets/scaffold/adaptive_scaffold.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    return AdaptiveScaffold(
      adaptiveAppBar: AdaptiveAppBar(
        title: const Text('Details'),
        previousPageTitle: 'Home',
        iOS: iOS,
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(_loremIpsum),
      ),
    );
  }
}

const _loremIpsum = '''
Implements a single iOS application page's layout.

The scaffold lays out the navigation bar on top and the content between or
behind the navigation bar.

When tapping a status bar at the top of the CupertinoPageScaffold, an
animation will complete for the current primary [ScrollView], scrolling to
the beginning. This is done using the [PrimaryScrollController] that
encloses the [ScrollView]. The [ScrollView.primary] flag is used to connect
a [ScrollView] to the enclosing [PrimaryScrollController].
''';
