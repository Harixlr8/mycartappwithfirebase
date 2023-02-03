import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mycartapp/consts/colors.dart';
import 'package:mycartapp/consts/consts.dart';
import 'package:mycartapp/consts/lists.dart';
import 'package:mycartapp/widgets_common/home_buttons.dart';

import '../../widgets_common/featuredItems.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        height: double.infinity,
        color: lightGrey,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  // decoration: const BoxDecoration(
                  color: lightGrey,
                  // ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        // border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: whiteColor,
                        hintText: 'Search for something'),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        height: 150,
                        viewportFraction: 1.00,
                        itemCount: sliderList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              sliderList[index],
                              fit: BoxFit.fill,
                            ),
                          );
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        homeButton(
                          title: 'Todays Deals',
                          height: 80.00,
                          width: width * 0.4,
                          icon: icTodaysDeal,
                        ),
                        homeButton(
                          title: 'Flash Sale',
                          height: 80.00,
                          width: width * 0.4,
                          icon: icFlashDeal,
                        ),
                      ],
                    ),
                    10.heightBox,
                    VxSwiper.builder(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        height: 150,
                        viewportFraction: 1.00,
                        itemCount: secondSliderList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              secondSliderList[index],
                              fit: BoxFit.fill,
                            ),
                          );
                        }),
                    15.heightBox,
                    
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          homeButton(
                            title: 'Top Categories',
                            height: 70.00,
                            width: width * 0.3,
                            icon: icTopCategories,
                          ),
                          homeButton(
                            title: 'Top Brands',
                            height: 70.00,
                            width: width * 0.3,
                            icon: icBrands,
                          ),
                          homeButton(
                            title: 'Top Sellers',
                            height: 70.00,
                            width: width * 0.3,
                            icon: icTopSeller,
                          ),
                        ]),
                    20.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: 'Featured Categories'
                          .text
                          .fontFamily(bold)
                          .size(20)
                          .make(),
                    ),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          featuredItemWidget(title: 'Women Dresses', icon: imgS1),
                          featuredItemWidget(title: 'Girls Dresses', icon: imgS2),
                          featuredItemWidget(title: 'Girls Watches', icon: imgS3),
                        ],
                      ),
                    ),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          featuredItemWidget(title: 'Boys Glasses', icon: imgS4),
                          featuredItemWidget(title: 'Mobile Phones', icon: imgS5),
                          featuredItemWidget(title: 'T-Shirts', icon: imgS6),
                        ],
                      ),
                    ),
                    7.heightBox,
                    Container(
                      width: double.infinity,
                      // height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/imgftrBg.png'),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            5.heightBox,
                            "Featured Products"
                                .text
                                .fontFamily(bold)
                                .size(20)
                                .color(Colors.black)
                                .make(),
                            10.heightBox,
                            SingleChildScrollView(
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
                                      description:
                                          'WIldcraft all weather womens bag',
                                      image: imgP5),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    20.heightBox,
                    VxSwiper.builder(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        height: 150,
                        viewportFraction: 1.00,
                        itemCount: sliderList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              sliderList[index],
                              fit: BoxFit.fill,
                            ),
                          );
                        }),
                    10.heightBox,
                    GridView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 250,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              crossAxisCount: 2),
                      children: [
                        SizedBox(
                          child: featuredProductsWidget(
                              title: 'Nike Space-X',
                              price: '200 USD',
                              description: 'HP pavillion gaming laptops ',
                              image: imgP6).box.rounded.color(whiteColor).make(),
                        ),
                        SizedBox(
                          child: featuredProductsWidget(
                              title: 'Gucci -HandBag',
                              price: '200 USD',
                              description: 'HP pavillion gaming laptops ',
                              image: imgP5).box.rounded.color(whiteColor).make(),
                        ),
                        SizedBox(
                          child: featuredProductsWidget(
                              title: 'TayBan Aviator',
                              price: '200 USD',
                              description: 'HP pavillion gaming laptops ',
                              image: imgP7).box.rounded.color(whiteColor).make(),
                        ),
                        SizedBox(
                          child: featuredProductsWidget(
                              title: 'Zudio Women shoes',
                              price: '200 USD',
                              description: 'HP pavillion gaming laptops ',
                              image: imgP4).box.rounded.color(whiteColor).make(),
                        ),
                        SizedBox(
                          child: featuredProductsWidget(
                              title: 'Intel-I5',
                              price: '200 USD',
                              description: 'HP pavillion gaming laptops ',
                              image: imgP1).box.rounded.color(whiteColor).make(),
                        ),
                        SizedBox(
                          child: featuredProductsWidget(
                              title: 'Amazon Kindle plus',
                              price: '200 USD',
                              description: 'HP pavillion gaming laptops ',
                              image: imgP3).box.rounded.color(whiteColor).make(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
            //
            //
          ],
        ),
      ),
    );
  }
}
