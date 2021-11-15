import 'dart:math';

import 'package:flip/jelly_layout.dart';
import 'package:flutter/material.dart';

indexColor(int index) {
  return Colors.primaries[index % Colors.primaries.length];
}

randomColor() {
  return indexColor(Random().nextInt(Colors.primaries.length));
}

Container centerText(String text, {Color? color, VoidCallback? onPressed}) {
  return Container(
    width: 200,
    height: 100,
    padding: EdgeInsets.all(30),
    color: color == null ? randomColor() : color,
    child: Jelly(child: onPressed == null ? Text(text) : ElevatedButton(onPressed: onPressed, child: Text(text))),
  );
}

Container centerTextButton(String text, {Color? color, VoidCallback? onPressed}) {
  return Container(
    width: 200,
    height: 100,
    padding: EdgeInsets.all(30),
    color: color == null ? randomColor() : color,
    child: Jelly(
      child: onPressed == null ? Text(text) : TextButton(onPressed: onPressed, child: Text(text)),
    ),
  );
}
