import 'package:adaptive_widgets/widgets/scaffold/adaptive_bottom_tab_scaffold.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({super.key});

  static const _tabItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_rounded),
      label: 'Main',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.bookmark_rounded),
      label: 'Favorite',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings_rounded),
      label: 'Settings',
    ),
  ];

  static const _tabViewItems = [
    Center(
      child: Text('Main Content'),
    ),
    Center(
      child: Text('Favorite List'),
    ),
    Center(
      child: Text('Settings Menu'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const AdaptiveBottomTabScaffold(
      tabItems: _tabItems,
      tabViewItems: _tabViewItems,
    );
  }
}
