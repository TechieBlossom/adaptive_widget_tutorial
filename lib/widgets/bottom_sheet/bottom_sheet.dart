import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void openBottomSheet(
  BuildContext context,
  List<String> items,
  List<IconData> icons,
) {
  final iOS = Theme.of(context).platform == TargetPlatform.iOS;
  return iOS
      ? _openActionSheet(context, items, icons)
      : _openBottomSheet(context, items, icons);
}

void _openBottomSheet(
  BuildContext context,
  List<String> items,
  List<IconData> icons,
) =>
    showBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...List.generate(
              items.length,
              (index) => Align(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(icons[index]),
                  label: Text(items[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );

void _openActionSheet(
  BuildContext context,
  List<String> items,
  List<IconData> icons,
) =>
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: <CupertinoActionSheetAction>[
          ...List.generate(
            items.length,
            (index) => CupertinoActionSheetAction(
              onPressed: () => Navigator.pop(context),
              child: Row(
                children: [
                  Icon(icons[index]),
                  const SizedBox(width: 16),
                  Text(items[index]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
