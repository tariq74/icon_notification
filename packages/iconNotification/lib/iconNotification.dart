import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget iconNotification(
    {@required IconButton iconButton,
    @required int index,
    Color color = Colors.red,
    TextStyle style = const TextStyle(fontSize: 10, color: Colors.black)}) {
  return Stack(
    alignment: Alignment.topRight,
    children: [
      iconButton,
      if (index > 0)
        Stack(alignment: Alignment.center, children: [
          Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              )),
          Text(
            "$index",
            style: style,
          )
        ])
    ],
  );
}
