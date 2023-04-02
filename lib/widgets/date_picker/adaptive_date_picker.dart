import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showAdaptiveDatePicker(
  BuildContext context, {
  required DateTime initialDate,
  required DateTime minimumDate,
  required DateTime maximumDate,
}) {
  final iOS = Theme.of(context).platform == TargetPlatform.iOS;
  return iOS
      ? _openCupertinoDatePicker(context, initialDate, minimumDate, maximumDate)
      : _openMaterialDatePicker(context, initialDate, minimumDate, maximumDate);
}

void _openCupertinoDatePicker(
  BuildContext context,
  DateTime initialDate,
  DateTime minimumDate,
  DateTime maximumDate,
) {
  showCupertinoModalPopup(
    context: context,
    builder: (_) {
      return SizedBox(
        height: 216,
        child: CupertinoDatePicker(
          backgroundColor: Colors.white,
          initialDateTime:
              initialDate.isBefore(minimumDate) ? null : initialDate,
          use24hFormat: true,
          // This is called when the user changes the dateTime.
          onDateTimeChanged: (DateTime newDateTime) {
            // setState(() => dateTime = newDateTime);
          },
          minimumDate: minimumDate,
          maximumDate: maximumDate,
        ),
      );
    },
  );
}

Future<DateTime?> _openMaterialDatePicker(
  BuildContext context,
  DateTime initialDate,
  DateTime minimumDate,
  DateTime maximumDate,
) {
  return showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: minimumDate,
    lastDate: maximumDate,
  );
}
