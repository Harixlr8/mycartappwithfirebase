import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycartapp/consts/consts.dart';

Widget featuredItemWidget({required String? title, required icon}) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 60,
      ),
      10.widthBox,
      "$title".text.fontFamily(semibold).color(Colors.black).make()
    ],
  )
      .box
      .white
      .roundedSM
      .outerShadowSm
      .padding(EdgeInsets.all(10))
      .margin(
        EdgeInsets.symmetric(horizontal: 5),
      )
      .make();
}

Widget featuredProductsWidget(
    {required String? title,
    required String? price,
    String? description,
    required image}) {
  return Column(
    children: [
      5.heightBox,
      Image.asset(
        image,
        width: 150,
        // height: 150,
      ),
      5.heightBox,
      '$title'.text.fontFamily(bold).color(Colors.black).make(),
      5.heightBox,
      // '$description'
      //     .text
      //     .align(TextAlign.center)
      //     .fontFamily(semibold)
      //     .color(Colors.black)
      //     .make(),
      // 5.heightBox,
      '$price'.text.fontFamily(semibold).color(Colors.black).make()
    ],
  )
      .box
      .margin(
        EdgeInsets.symmetric(horizontal: 5),
      )
      .roundedSM
      .padding(
        EdgeInsets.all(5),
      )
      .color(whiteColor)
      // .outerShadowMd
      .width(180)
      .make();
}
