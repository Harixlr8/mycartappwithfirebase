import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mycartapp/consts/consts.dart';
import 'package:mycartapp/consts/lists.dart';
import 'package:mycartapp/screens/profile_screen/components/detailCards.dart';
import 'package:mycartapp/widgets_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
      children: [
        InkWell(
          onTap: () {},
          child: const Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.edit),
          ),
        ),
        // 10.heightBox,
        Row(
          children: [
            Image.asset(
              imgProfile,
              width: 80,
              fit: BoxFit.cover,
            ).box.roundedFull.clip(Clip.antiAlias).make(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  'Dummy User'.text.fontFamily(bold).make(),
                  'user@gmail.com'.text.fontFamily(semibold).make(),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: black)),
              child: 'Logout'.text.color(black).make(),
            )
          ],
        ),
        20.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            detailCards(
                width: context.screenWidth / 3.4,
                count: '00',
                title: 'Items in cart'),
            detailCards(
                width: context.screenWidth / 3.3,
                count: '36',
                title: 'Items in wishlist'),
            detailCards(
                width: context.screenWidth / 3.4,
                count: '01',
                title: 'Your orders'),
          ],
        ),
        40.heightBox,

        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(profileButtonIcon[index],width: 22,),
                title: profileButtonsList[index]
                    .text
                    .fontFamily(semibold)
                    .make(),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                // indent: 1.00,
                color: Colors.grey,
              );
            },
            itemCount: profileButtonsList.length).box.padding(EdgeInsets.symmetric(horizontal: 16)).shadowSm.white.roundedSM.make()
      ],
        ),
      ),
    ));
  }
}
