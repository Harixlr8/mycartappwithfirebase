import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycartapp/consts/consts.dart';
import 'package:mycartapp/screens/categorie_screen/item_details.dart';
import 'package:mycartapp/widgets_common/bg_widget.dart';

import '../../widgets_common/featuredItems.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: title!.text.fontFamily(bold).size(25).make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              10.heightBox,
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => "Baby Clothing"
                        .text
                        .fontFamily(semibold)
                        .makeCentered()
                        .box
                        .size(120, 60)
                        .rounded
                        .white
                        .margin(EdgeInsets.symmetric(horizontal: 5))
                        .make(),
                  ),
                ),
              ),
              20.heightBox,
              Container(
                  color: lightGrey,
                  child: GridView(
                    shrinkWrap: true,
                    // itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            mainAxisExtent: 210,
                            crossAxisSpacing: 8),
                    // itemBuilder: (context, index) {
                    //   return Column().box.white.rounded.make();
                    // }
                    children: [
                      SizedBox(
                        child: featuredProductsWidget(
                                title: 'Nike Space-X',
                                price: '200 USD',
                                description: 'HP pavillion gaming laptops ',
                                image: imgP6)
                            .box
                            .rounded
                            .color(whiteColor)
                            .make(),
                      ),
                      SizedBox(
                        child: featuredProductsWidget(
                                title: 'Gucci -HandBag',
                                price: '200 USD',
                                description: 'HP pavillion gaming laptops ',
                                image: imgP5)
                            .box
                            .rounded
                            .color(whiteColor)
                            .make(),
                      ),
                      SizedBox(
                        child: featuredProductsWidget(
                                title: 'TayBan Aviator',
                                price: '200 USD',
                                description: 'HP pavillion gaming laptops ',
                                image: imgP7)
                            .box
                            .rounded
                            .color(whiteColor)
                            .make(),
                      ),
                      SizedBox(
                        child: featuredProductsWidget(
                                title: 'Zudio Women shoes',
                                price: '200 USD',
                                description: 'HP pavillion gaming laptops ',
                                image: imgP4)
                            .box
                            .rounded
                            .color(whiteColor)
                            .make(),
                      ),
                      SizedBox(
                        child: featuredProductsWidget(
                                title: 'Intel-I5',
                                price: '200 USD',
                                description: 'HP pavillion gaming laptops ',
                                image: imgP1)
                            .box
                            .rounded
                            .color(whiteColor)
                            .make(),
                      ),
                      SizedBox(
                        child: featuredProductsWidget(
                                title: 'Amazon Kindle plus',
                                price: '200 USD',
                                description: 'HP pavillion gaming laptops ',
                                image: imgP3)
                            .box
                            .rounded
                            .color(whiteColor)
                            .make(),
                      ),
                    ],
                  ).onTap(() {
                    Get.to(() => Itemdetails(
                          title: 'Sample Title',
                        ));
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
