import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mycartapp/consts/consts.dart';
import 'package:mycartapp/screens/auth_screen/signup_screen.dart';
import 'package:mycartapp/screens/home_screen/Home.dart';
import 'package:mycartapp/widgets_common/applogo_widget.dart';
import 'package:mycartapp/widgets_common/bg_widget.dart';
import 'package:mycartapp/widgets_common/custom_textfield.dart';
import 'package:mycartapp/widgets_common/our_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return bgWidget(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.07,
                ),
                appLogoWidget(),
                const HeightBox(10),
                "Welcome back to $appname "
                    .text
                    .size(18)
                    .white
                    .fontFamily(semibold)
                    .make(),
                "Log in with your credentials"
                    .text
                    .size(18)
                    .white
                    .fontFamily(semibold)
                    .make(),
                10.heightBox,
                Column(
                  children: [
                    customTextField(
                      name: email,
                      hint: emailHint,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    customTextField(
                      name: password,
                      hint: passwordHint,
                    ),
                    5.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'forgot password',
                            style: TextStyle(
                                fontFamily: regular, color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    ourButton(
                      color: yellowColor,
                      title: 'Login',
                      textColor: whiteColor,
                      onPress: () {
                        Get.to(() => Home());
                      },
                    ).box.width(width * 0.7).make(),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Don't have an account ??"
                            .text
                            .fontFamily(semibold)
                            .color(redColor)
                            .make(),
                        ourButton(
                          color: redColor,
                          title: 'SignUp',
                          textColor: whiteColor,
                          onPress: () {
                            Get.to(() => SignupPage());
                          },
                        ).box.width(width * 0.3).make(),
                      ],
                    ),
                    10.heightBox,
                    "Continue Login using...".text.fontFamily(regular).make(),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: lightGrey,
                          backgroundImage: AssetImage(icFacebookLogo),
                        ),
                        10.widthBox,
                        const CircleAvatar(
                          backgroundColor: lightGrey,
                          backgroundImage: AssetImage(icGoogleLogo),
                        ),
                        10.widthBox,
                        const CircleAvatar(
                          backgroundColor: lightGrey,
                          backgroundImage: AssetImage(icTwitterLogo),
                        ),
                      ],
                    ),
                    10.heightBox
                  ],
                )
                    .box
                    .white
                    .rounded
                    .padding(const EdgeInsets.all(16))
                    .width(width * 0.85)
                    .shadowSm
                    .make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
