import 'package:flutter/material.dart';
import 'package:flutter_desktop_plant/utils/colors.dart';
import 'package:flutter_desktop_plant/utils/f_navbar.dart';
import 'package:flutter_desktop_plant/utils/text_styles.dart';
import 'package:flutter_icons/flutter_icons.dart';

Widget fHeader() {
  return Container(
    height: 70,
    padding: EdgeInsets.symmetric(
      // vertical: 8,
      horizontal: 18,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border(
        bottom: BorderSide(
          color: Colors.grey.withOpacity(.4),
          width: .5,
        ),
      ),
    ),
    child: Row(
      children: [
        //logo
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: mainColor,
          ),
          child: Icon(
            FlutterIcons.leaf_ent,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          "OYOTEE",
          style: primaryTextStyle.apply(
            fontWeightDelta: 3,
            fontSizeDelta: 1,
          ),
        ),

        SizedBox(
          width: 96,
        ),

        fNavbar(),

        Spacer(),

        Row(
          children: [
            Icon(
              FlutterIcons.shopping_bag_fea,
              size: 18,
            ),
            SizedBox(
              width: 16,
            ),
            Icon(
              FlutterIcons.heart_fea,
              size: 18,
            ),
            SizedBox(
              width: 16,
            ),
            CircleAvatar(
              radius: 12,
              foregroundImage: AssetImage(
                'assets/img/avatar.jpg',
              ),
              backgroundColor: mainColor,
            )
          ],
        )
      ],
    ),
  );
}
