import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showAdaptiveDialog(
  BuildContext context,
  Widget? title,
  Widget? content,
  List<String> buttons,
) {
  final iOS = Theme.of(context).platform == TargetPlatform.iOS;

  return iOS
      ? _showCupertinoAlertDialog(context, title, content, buttons)
      : _showMaterialDialog(
          context,
          title,
          content,
          buttons,
        );
}

Future<void> _showMaterialDialog(
  BuildContext context,
  Widget? title,
  Widget? content,
  List<String> buttons,
) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: title,
        content: content,
        actions: <Widget>[
          ...List.generate(
            buttons.length,
            (index) => TextButton(
              child: Text(buttons[index]),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      );
    },
  );
}

Future<void> _showCupertinoAlertDialog(
  BuildContext context,
  Widget? title,
  Widget? content,
  List<String> buttons,
) {
  return showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: title,
      content: content,
      actions: <CupertinoDialogAction>[
        ...List.generate(
          buttons.length,
          (index) => CupertinoDialogAction(
            onPressed: () => Navigator.pop(context),
            child: Text(buttons[index]),
          ),
        ),
      ],
    ),
  );
}
