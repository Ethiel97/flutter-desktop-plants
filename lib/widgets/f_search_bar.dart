import 'package:flutter/material.dart';
import 'package:flutter_desktop_plant/utils/colors.dart';
import 'package:flutter_desktop_plant/utils/text_styles.dart';
import 'package:flutter_icons/flutter_icons.dart';

Widget FSearchBar() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 12),
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(
        .08,
      ),
      borderRadius: BorderRadius.circular(
        12,
      ),
    ),
    child: TextFormField(
      style: primaryTextStyle.apply(
        fontSizeDelta: -1,
        color: mainColor,
      ),
      textAlign: TextAlign.start,
      decoration: InputDecoration(

        prefixIcon: Icon(
          FlutterIcons.search_evi,
          color: Colors.grey.withOpacity(
            .5,
          ),
        ),
        suffixIcon: Icon(
          FlutterIcons.close_evi,
        ),
        hintStyle: primaryTextStyle.apply(
          color: Colors.grey.withOpacity(
            .5,
          ),
        ),
        hintText: 'Monstera',
        border: InputBorder.none,
      ),
    ),
  );
}
