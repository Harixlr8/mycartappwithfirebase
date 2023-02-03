import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycartapp/consts/consts.dart';

Widget customTextField({String? name, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      "$name".text.fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        textInputAction: TextInputAction.next,
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            fontFamily: semibold,
          ),
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: yellowColor),
          ),
        ),
      )
    ],
  );
}
