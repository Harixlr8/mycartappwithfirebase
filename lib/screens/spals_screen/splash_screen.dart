import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mycartapp/consts/colors.dart';
import 'package:mycartapp/consts/consts.dart';
import 'package:mycartapp/screens/auth_screen/login_screen.dart';
import 'package:mycartapp/widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(Duration(seconds: 5), () {
      Get.to(() => LoginScreen());
    });
  }
 
  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellowColor,
      body: Center(
        
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            const HeightBox(20),
            appLogoWidget(),
            const HeightBox(10),
            const Text(
              appname,
              style: TextStyle(
                  fontFamily: bold, color: Colors.white, fontSize: 21),
            ),
            appversion.text.fontFamily(semibold).white.make(),
            const Spacer(),
            "$credits @Copyright owned"
                .text
                .white
                .fontFamily(semibold)
                .make(),
            10.heightBox
          ],
        ),
      ),
    );
  }
}
