final List<CupertinoWidget> cupertinoWidgets = [
  CupertinoWidget('1. CupertinoApp', 'Creates a CupertinoApp'),
  CupertinoWidget(
    '2. CupertinoPageScaffold',
    'Implements a single iOS application page\'s layout.',
  ),
  CupertinoWidget(
    '3. CupertinoNavigationBar',
    'Creates a navigation bar in the iOS style.',
  ),
  CupertinoWidget(
    '4. CupertinoListTile',
    'Creates an edge-to-edge iOS-style list tile',
  ),
  CupertinoWidget(
    '5. CupertinoActionSheet',
    'Creates an iOS-style action sheet.',
  ),
  CupertinoWidget(
    '6. CupertinoActivityIndicator',
    'Activity Indicator for iOS',
  ),
  CupertinoWidget(
    '7. CupertinoAlertDialog',
    'An iOS-style alert dialog.',
  ),
  CupertinoWidget(
    '8. CupertinoButton',
    'An iOS-style button.',
  ),
  CupertinoWidget(
    '9. CupertinoSlider',
    'Used to select from a range of values.',
  ),
  CupertinoWidget(
    '10. CupertinoDatePicker',
    'A date picker widget in iOS style.',
  ),
  CupertinoWidget(
    '11. CupertinoSliverNavigationBar',
    'An iOS-styled navigation bar with iOS-11-style large titles using slivers.',
  ),
  CupertinoWidget(
    '12. CupertinoSwitch',
    'An iOS-style switch.',
  ),
  CupertinoWidget(
    '13. CupertinoTabBar',
    'An iOS-styled bottom navigation tab bar.',
  ),
  CupertinoWidget(
    '14. CupertinoTextField',
    'An iOS-style text field.',
  ),
];

final List<MaterialWidget> materialWidgets = [
  MaterialWidget('1. MaterialApp', 'Creates a MaterialApp.'),
  MaterialWidget(
    '2. Scaffold',
    'Creates a visual scaffold for Material Design widgets.',
  ),
  MaterialWidget(
    '3. AppBar',
    'Creates a Material Design app bar.',
  ),
  MaterialWidget(
    '4. ListTile',
    'Creates a list tile.',
  ),
  MaterialWidget(
    '5. Bottom Sheet',
    'Open a bottom sheet',
  ),
  MaterialWidget(
    '6. CircularProgressIndicator',
    'Circular progress indicator from Material design',
  ),
  MaterialWidget(
    '7. AlertDialog',
    'A Material Design alert dialog.',
  ),
  MaterialWidget(
    '8. Button',
    'Material design buttons',
  ),
  MaterialWidget(
    '9. Slider',
    'Sliders let users select from a range of values by moving the slider thumb.',
  ),
  MaterialWidget(
    '10. Material Date Picker',
    'Shows a dialog containing a Material Design date picker.',
  ),
  MaterialWidget(
    '11. SliverAppBar',
    'A Material Design app bar that integrates with a CustomScrollView.',
  ),
  MaterialWidget(
    '12. Switch',
    'A Material Design switch.',
  ),
  MaterialWidget(
    '13. BottomNavigationBar',
    'A material widget that\'s displayed at the bottom of an app for selecting among a small number of views, typically between three and five.',
  ),
  MaterialWidget(
    '14. TextField',
    'A Material Design text field.',
  ),
];

abstract class View {
  final String title;
  final String subTitle;

  View(this.title, this.subTitle);
}

class MaterialWidget extends View {
  MaterialWidget(super.title, super.subTitle);
}

class CupertinoWidget extends View {
  CupertinoWidget(super.title, super.subTitle);
}
