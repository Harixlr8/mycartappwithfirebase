import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mycartapp/consts/consts.dart';
import 'package:mycartapp/consts/lists.dart';
import 'package:mycartapp/widgets_common/our_button.dart';

import '../../widgets_common/featuredItems.dart';

class Itemdetails extends StatelessWidget {
  final String? title;
  const Itemdetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text
            .fontFamily(semibold)
            .size(25)
            .color(Colors.black)
            .make(),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
          10.widthBox,
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VxSwiper.builder(
                        viewportFraction: 0.85,
                        autoPlay: true,
                        height: 300,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgFc5,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          );
                        }),
                    10.heightBox,
                    title!.text
                        .fontFamily(semibold)
                        .color(Colors.black)
                        .size(20)
                        .make(),
                    10.heightBox,
                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textFielGrey,
                      selectionColor: Color.fromARGB(255, 233, 214, 50),
                      count: 5,
                      size: 25,
                      stepInt: true,
                    ),
                    10.heightBox,
                    '\$30,000'
                        .text
                        .color(redColor)
                        .size(20)
                        .fontFamily(semibold)
                        .make(),
                    10.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              'Seller'
                                  .text
                                  .fontFamily(semibold)
                                  .color(Colors.black)
                                  .make(),
                              5.heightBox,
                              'In House Brands'
                                  .text
                                  .fontFamily(semibold)
                                  .color(Colors.black)
                                  .make(),
                            ],
                          ),
                        ),
                        const CircleAvatar(
                          backgroundColor: lightGrey,
                          child: Icon(
                            Icons.message_rounded,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                        .box
                        .rounded
                        .color(whiteColor)
                        .height(60)
                        .padding(EdgeInsets.symmetric(horizontal: 15))
                        .make(),
                    20.heightBox,
                    Column(
                      children: [
                        Row(
                          children: [
                            10.widthBox,
                            'Colors'.text.fontFamily(regular).make(),
                            100.widthBox,
                            Row(
                              children: List.generate(
                                3,
                                (index) => VxBox()
                                    .size(35, 35)
                                    .roundedFull
                                    .color(Vx.randomPrimaryColor)
                                    .margin(
                                      EdgeInsets.symmetric(horizontal: 5),
                                    )
                                    .make(),
                              ),
                            ),
                          ],
                        ).box.color(whiteColor).rounded.height(60).make(),
                        10.heightBox,
                        Row(
                          children: [
                            10.widthBox,
                            'Add'.text.fontFamily(regular).make(),
                            100.widthBox,
                            Row(children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove),
                              ),
                              '0'
                                  .text
                                  .fontFamily(semibold)
                                  .color(black)
                                  .size(16)
                                  .make(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                              ),
                            ]),
                          ],
                        ).box.color(whiteColor).rounded.height(60).make(),
                        10.heightBox,
                        Row(children: [
                          10.widthBox,
                          'Money'.text.fontFamily(regular).make(),
                          100.widthBox,
                          '\$ 0.00'
                              .text
                              .fontFamily(semibold)
                              .color(redColor)
                              .make()
                        ]).box.color(whiteColor).rounded.height(60).make()
                      ],
                    ),
                    20.heightBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        5.heightBox,
                        'Description'.text.color(black).make(),
                        10.heightBox,
                        'This is a dummy description here..'
                            .text
                            .fontFamily(semibold)
                            .color(black)
                            .make(),
                        5.heightBox
                      ],
                    )
                        .box
                        .rounded
                        .color(whiteColor)
                        .width(double.infinity)
                        .make(),
                    10.heightBox,
                    ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(
                        itemDetailslist.length,
                        (index) => ListTile(
                          title: itemDetailslist[index]
                              .text
                              .fontFamily(semibold)
                              .make(),
                          trailing: Icon(Icons.arrow_forward_ios),
                        )
                            .box
                            .color(whiteColor)
                            .roundedSM
                            .margin(EdgeInsets.symmetric(vertical: 5))
                            .make(),
                      ),
                    ),
                    15.heightBox,
                    'Proucts you may also like'
                        .text
                        .fontFamily(semibold)
                        .size(16)
                        .make(),
                    10.heightBox,
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          featuredProductsWidget(
                              title: 'HP Pavilion X-545G',
                              price: '200 USD',
                              description: 'HP pavillion gaming laptops ',
                              image: imgP1),
                          featuredProductsWidget(
                              title: 'Nyka Getready Kit',
                              price: '200 USD',
                              description: 'Nyka Cosmetics ',
                              image: imgP2),
                          featuredProductsWidget(
                              title: 'Amazon kindle book pro',
                              price: '200 USD',
                              description: 'Amazon Kindle Book',
                              image: imgP3),
                          featuredProductsWidget(
                              title: 'Women-BTA-105',
                              price: '200 USD',
                              description: 'Bata Shoes for women ',
                              image: imgP4),
                          featuredProductsWidget(
                              title: 'Wildcraft W-200',
                              price: '200 USD',
                              description: 'WIldcraft all weather womens bag',
                              image: imgP5),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ourButton(
                onPress: () {},
                color: yellowColor,
                title: 'Add to Cart',
                textColor: whiteColor),
          )
        ],
      ),
    );
  }
}
