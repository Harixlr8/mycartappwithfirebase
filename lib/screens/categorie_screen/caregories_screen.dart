import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycartapp/consts/consts.dart';
import 'package:mycartapp/consts/lists.dart';
import 'package:mycartapp/screens/categorie_screen/category_details.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:mycartapp/widgets_common/bg_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: "Categories".text.fontFamily(semibold).make(),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: GridView.builder(
              itemCount: 9,
              physics: ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 200,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(
                      categoryImages[index],
                      height: 125,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    10.heightBox,
                    categoreList[index]
                        .text
                        .fontFamily(semibold)
                        .align(TextAlign.center)
                        .make(),
                  ],
                )
                    .box
                    .color(
                      Color.fromARGB(255, 240, 239, 239),
                    )
                    // .rounded
                    .outerShadowSm
                    .make()
                    .onTap(() {
                  Get.to(
                    () => CategoryDetails(
                      title: categoreList[index],
                    ),
                  );
                });
              }),
        ),
      ),
    );
  }
}
