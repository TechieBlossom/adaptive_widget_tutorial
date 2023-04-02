import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveBottomTabScaffold extends StatefulWidget {
  const AdaptiveBottomTabScaffold({
    super.key,
    required this.tabItems,
    required this.tabViewItems,
  });

  final List<BottomNavigationBarItem> tabItems;
  final List<Widget> tabViewItems;

  @override
  State<AdaptiveBottomTabScaffold> createState() =>
      _AdaptiveBottomTabScaffoldState();
}

class _AdaptiveBottomTabScaffoldState extends State<AdaptiveBottomTabScaffold> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    return iOS
        ? CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              items: widget.tabItems,
              currentIndex: _currentIndex,
              onTap: (index) => setState(() => _currentIndex = index),
            ),
            tabBuilder: (BuildContext context, int index) {
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return widget.tabViewItems[index];
                },
              );
            },
          )
        : Scaffold(
            body: IndexedStack(
              index: _currentIndex,
              children: widget.tabViewItems,
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: widget.tabItems,
              currentIndex: _currentIndex,
              onTap: (index) => setState(() => _currentIndex = index),
            ),
          );
  }
}
