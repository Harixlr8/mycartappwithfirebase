import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycartapp/consts/consts.dart';
import 'package:mycartapp/widgets_common/applogo_widget.dart';
import 'package:mycartapp/widgets_common/bg_widget.dart';
import 'package:mycartapp/widgets_common/custom_textfield.dart';
import 'package:mycartapp/widgets_common/our_button.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
                "Welcome user to this awesome shopping app "
                    .text
                    .size(18)
                    .white
                    .fontFamily(semibold)
                    .make(),
                "SignUp in with your credentials to $appname "
                    .text
                    .size(18)
                    .white
                    .fontFamily(semibold)
                    .make(),
                15.heightBox,
                Column(
                  children: [
                    customTextField(
                      name: 'Name',
                      hint: 'User',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    customTextField(
                      name: email,
                      hint: emailHint,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    customTextField(
                      name: password,
                      hint: 'Enter password more than 6 chars...',
                    ),
                    10.heightBox,
                    customTextField(
                      name: 'Retype password',
                      hint: 'Re-Enter password to confirm..',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // 5.heightBox,
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                    //     TextButton(
                    //       onPressed: () {},
                    //       child: const Text(
                    //         'forgot password',
                    //         style: TextStyle(
                    //             fontFamily: regular, color: Colors.blue),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    ourButton(
                      color: yellowColor,
                      title: 'SignUp',
                      textColor: whiteColor,
                      onPress: () {},
                    ).box.width(width * 0.7).make(),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Already have an account ??"
                            .text
                            .fontFamily(semibold)
                            .color(redColor)
                            .make(),
                        ourButton(
                          color: redColor,
                          title: 'Login',
                          textColor: whiteColor,
                          onPress: () {
                            Get.back();
                          },
                        ).box.width(width * 0.3).make(),
                      ],
                    ),
                    // 10.heightBox,
                    // "You can also SignUp using..."
                    //     .text
                    //     .fontFamily(regular)
                    //     .make(),
                    15.heightBox,
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     const CircleAvatar(
                    //       backgroundColor: lightGrey,
                    //       backgroundImage: AssetImage(icFacebookLogo),
                    //     ),
                    //     5.widthBox,
                    //     const CircleAvatar(
                    //       backgroundColor: lightGrey,
                    //       backgroundImage: AssetImage(icGoogleLogo),
                    //     ),
                    //     5.widthBox,
                    //     const CircleAvatar(
                    //       backgroundColor: lightGrey,
                    //       backgroundImage: AssetImage(icTwitterLogo),
                    //     ),
                    //   ],
                    // )
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
