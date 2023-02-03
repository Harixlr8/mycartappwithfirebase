import 'package:flutter/cupertino.dart';
import 'package:mycartapp/consts/consts.dart';

Widget detailCards({width,String? count,String? title}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
              children: [
                count!.text.fontFamily(bold).color(black).size(16).make(),
                5.heightBox,
                title!.text.fontFamily(semibold).color(black).make(),

              ],
            ).box.white.roundedSM.width(width).height(60).padding(EdgeInsets.all(8)).make();
}