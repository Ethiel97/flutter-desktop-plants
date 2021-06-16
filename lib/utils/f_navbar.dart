import 'package:flutter/material.dart';
import 'package:flutter_desktop_plant/utils/colors.dart';
import 'package:flutter_desktop_plant/utils/text_styles.dart';

Widget fNavbar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      fNavbarItem(
        "Shop",
        isActive: true,
      ),
      fNavbarItem(
        "Plant Care",
      ),
      fNavbarItem(
        "Worshops",
      ),
      fNavbarItem(
        "Blogs",
      ),
    ],
  );
}

Widget fNavbarItem(String name, {bool isActive = false}) {
  return Padding(
      padding: EdgeInsets.only(
        left: 24,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Text(
            "$name",
            style: primaryTextStyle.apply(
              fontSizeDelta: -2,
              color: isActive ? Colors.black : Colors.grey.withOpacity(.8),
            ),
          ),
          Spacer(),
          if (isActive) ...[
            Container(
              height: 2,
              width: 38,
              color: mainColor,
            )
          ]
        ],
      ));
}
