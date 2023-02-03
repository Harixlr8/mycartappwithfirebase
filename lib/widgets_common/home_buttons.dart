import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycartapp/consts/consts.dart';

Widget homeButton({height, width, title, onPress, icon}) {
  return InkWell(
    onTap: onPress,
    child: Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 8.heightBox,
          Image.asset(
            icon,
            width: 25,
          ),
          5.heightBox,
          "$title".text.fontFamily(semibold).make()
        ],
      ),
    ),
  );
}
