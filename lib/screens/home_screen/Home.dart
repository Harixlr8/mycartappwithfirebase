import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mycartapp/consts/consts.dart';
import 'package:mycartapp/controllers/home_controllers.dart';
import 'package:mycartapp/screens/cart_screen/cart_screen.dart';
import 'package:mycartapp/screens/categorie_screen/caregories_screen.dart';
import 'package:mycartapp/screens/home_screen/home_screen.dart';
import 'package:mycartapp/screens/profile_screen/profile_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navBarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 25,
            
          ),
          label: 'Home'),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 25,
          ),
          label: 'Categories'),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 25,
          ),
          label: 'Cart'),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 25,
          ),
          label: 'Account'),
    ];

    var navBody = [
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
        body: Column(
          children: [
            Obx(
              () => Expanded(
                child: navBody.elementAt(controller.currentNavIndex.value),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            onTap: (value) => controller.currentNavIndex.value = value,
            currentIndex: controller.currentNavIndex.value,
            items: navBarItem,
            backgroundColor: whiteColor,
            selectedItemColor: yellowColor,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(fontFamily: semibold),
          ),
        ));
  }
}
