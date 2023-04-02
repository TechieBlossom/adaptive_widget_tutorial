import 'package:adaptive_widgets/screens/bottom_bar_screen.dart';
import 'package:adaptive_widgets/screens/button_screen.dart';
import 'package:adaptive_widgets/screens/detail_screen.dart';
import 'package:adaptive_widgets/screens/loading_screen.dart';
import 'package:adaptive_widgets/screens/slider_screen.dart';
import 'package:adaptive_widgets/screens/sliver_screen.dart';
import 'package:adaptive_widgets/screens/switch_screen.dart';
import 'package:adaptive_widgets/screens/textfield_screen.dart';
import 'package:adaptive_widgets/widgets.dart';
import 'package:adaptive_widgets/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:adaptive_widgets/widgets/date_picker/adaptive_date_picker.dart';
import 'package:adaptive_widgets/widgets/dialog/dialog.dart';
import 'package:adaptive_widgets/widgets/list_tile/adaptive_list_tile.dart';
import 'package:adaptive_widgets/widgets/page_route/adaptive_page_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveList extends StatelessWidget {
  const AdaptiveList({super.key});

  @override
  Widget build(BuildContext context) {
    final iOS = Theme.of(context).platform == TargetPlatform.iOS;
    final widgets = iOS ? cupertinoWidgets : materialWidgets;

    return ListView.builder(
      itemCount: widgets.length,
      itemBuilder: (context, index) {
        return AdaptiveListTile(
          title: Text(widgets[index].title),
          subtitle: Text(widgets[index].subTitle),
          onItemTap: () => _navigate(context, iOS, index),
          trailing: const CupertinoListTileChevron(),
          additionalInfo: const Text('3'),
          leadingToTitleGap: 10,
          leading: const Icon(CupertinoIcons.profile_circled),
          activeBackgroundColor: Colors.greenAccent,
          backgroundColor: Colors.orangeAccent,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        );
      },
    );
  }

  void _navigate(BuildContext context, bool iOS, int index) {
    late Widget screen;
    switch (index) {
      case 4:
        final List<String> items = ['Camera', 'Photos'];
        final List<IconData> icons = [
          Icons.camera_enhance_rounded,
          Icons.photo_library_rounded
        ];
        openBottomSheet(context, items, icons);
        break;
      case 5:
        screen = const LoadingScreen();
        _toScreen(screen, context, iOS);
        break;
      case 6:
        showAdaptiveDialog(
          context,
          const Text('Alert'),
          const Text('This is a demo alert dialog.'),
          ['No', 'Yes'],
        );
        break;
      case 7:
        screen = const ButtonScreen();
        _toScreen(screen, context, iOS);
        break;
      case 8:
        screen = const SliderScreen();
        _toScreen(screen, context, iOS);
        break;
      case 9:
        showAdaptiveDatePicker(
          context,
          initialDate: DateTime.now().add(const Duration(days: 1)),
          minimumDate: DateTime.now(),
          maximumDate: DateTime.now().add(const Duration(days: 7)),
        );
        break;
      case 10:
        screen = const SliverScreen();
        _toScreen(screen, context, iOS);
        break;
      case 11:
        screen = const SwitchScreen();
        _toScreen(screen, context, iOS);
        break;
      case 12:
        screen = const BottomBarScreen();
        _toScreen(screen, context, iOS);
        break;
      case 13:
        screen = const TextFieldScreen();
        _toScreen(screen, context, iOS);
        break;
      default:
        screen = const DetailScreen();
        _toScreen(screen, context, iOS);
    }
  }

  void _toScreen(Widget screen, BuildContext context, bool iOS) {
    Navigator.push(
      context,
      adaptivePageRoute(iOS, screen, 'Loading screen'),
    );
  }
}
