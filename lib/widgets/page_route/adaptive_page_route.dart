import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PageRoute adaptivePageRoute(
  bool iOS,
  Widget screen,
  String? title,
) {
  return iOS
      ? CupertinoPageRoute(builder: (_) => screen, title: title)
      : MaterialPageRoute(
          builder: (_) => screen,
        );
}
