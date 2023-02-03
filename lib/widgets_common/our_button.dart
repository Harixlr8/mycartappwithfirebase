import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycartapp/consts/consts.dart';

Widget ourButton({onPress, color, textColor, title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: EdgeInsets.all(10),
    ),
    onPressed: onPress,
    child: "$title".text.color(textColor).fontFamily(bold).make(),
  );
}
