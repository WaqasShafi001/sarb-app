import 'package:flutter/material.dart';

Widget toolTipView({Widget? child, String? text}) {
  final key = new GlobalKey();
  return GestureDetector(
      onTap: () {
        final dynamic tooltip = key.currentState;
        tooltip.ensureTooltipVisible();
      },
      child: Tooltip(
        key: key,
        message: text!,
        child: child,
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
        verticalOffset: 0,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(10.0),
      ));
}