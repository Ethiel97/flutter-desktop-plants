import 'package:flutter/material.dart';
import 'package:flutter_desktop_plant/utils/colors.dart';
import 'package:flutter_desktop_plant/utils/extensions.dart';
import 'package:flutter_desktop_plant/utils/text_styles.dart';
import 'package:flutter_icons/flutter_icons.dart';

class WFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        height: context.screenHeight(),
        width: context.screenWidth(percent: .25),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            right: BorderSide(
              color: Colors.grey.withOpacity(.4),
              width: .5,
            ),
          ),
        ),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            vertical: 24,
            // horizontal: 18,
          ),
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 24, left: 24, right: 24,),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.withOpacity(.4),
                    width: .5,
                  ),
                ),
              ),
              child: Text(
                "Filters",
                style: primaryTextStyle.apply(
                  fontWeightDelta: 2,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 24, left: 24, right: 24),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.withOpacity(.4),
                    width: .5,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: primaryTextStyle.apply(
                      fontWeightDelta: 1,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    // tristate: false,
                    controlAffinity: ListTileControlAffinity.leading,

                    value: false,
                    dense: false,
                    onChanged: onChanged,
                    activeColor: mainColor,
                    title: Text(
                      'Gardening',
                    ),
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    // tristate: false,
                    controlAffinity: ListTileControlAffinity.leading,
                    value: true,
                    dense: false,
                    onChanged: onChanged,
                    activeColor: mainColor,
                    title: Text(
                      'Plants',
                    ),
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    // tristate: false,
                    controlAffinity: ListTileControlAffinity.leading,
                    value: false,
                    dense: false,
                    onChanged: onChanged,
                    activeColor: mainColor,
                    title: Text(
                      'Seeds',
                    ),
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    // tristate: false,
                    controlAffinity: ListTileControlAffinity.leading,
                    value: false,
                    dense: false,
                    onChanged: onChanged,
                    activeColor: mainColor,
                    title: Text(
                      'Bulbs',
                    ),
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    // tristate: false,
                    controlAffinity: ListTileControlAffinity.leading,
                    value: false,
                    dense: false,
                    onChanged: onChanged,
                    activeColor: mainColor,
                    title: Text(
                      'Planters',
                    ),
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    // tristate: false,
                    controlAffinity: ListTileControlAffinity.leading,

                    value: false,
                    dense: false,
                    onChanged: onChanged,
                    activeColor: mainColor,
                    title: Text(
                      'Others',
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),

            //price range
            Container(
              padding: EdgeInsets.only(bottom: 36, left: 24, right: 24),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.withOpacity(.4),
                    width: .5,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price range",
                    style: primaryTextStyle.apply(
                      fontWeightDelta: 2,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(child: fPrice("Min")),
                      SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: fPrice(
                          "\$ 400",
                          isActive: true,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    width: double.infinity,
                    height: 35,
                    child: ElevatedButton(
                      child: Text('Set price'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            6,
                          ),
                        ),
                        textStyle: primaryTextStyle.apply(
                          fontSizeDelta: -2,
                          fontWeightDelta: -1,
                        ),
                        primary: mainColor,
                        elevation: .2,
                        padding: EdgeInsets.symmetric(
                          vertical: 14,
                          // horizontal: 12,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              padding: EdgeInsets.only(bottom: 36, left: 24, right: 24),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.withOpacity(.4),
                    width: .5,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rating",
                    style: primaryTextStyle.apply(
                      fontWeightDelta: 2,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(value: true, onChanged: (val) {}),
                      SizedBox(
                        width: 8,
                      ),
                      Row(
                        children: [
                          ...List.generate(
                            4,
                            (index) => Icon(
                              FlutterIcons.star_ant,
                              color: Colors.amber,
                            ),
                          ).toList()
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("above")
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  onChanged(newVal) {}

  Widget fPrice(String text, {bool isActive = false}) => Opacity(
        opacity: isActive ? 1.0 : .4,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 5,
          ),
          decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.grey.withOpacity(.2),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey.withOpacity(.4),
              width: .5,
            ),
          ),
          child: Text(
            text,
            style: primaryTextStyle.apply(
              fontSizeDelta: -2,
            ),
          ),
        ),
      );
}
