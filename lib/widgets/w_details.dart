import 'package:flutter/material.dart';
import 'package:flutter_desktop_plant/providers/state_manager.dart';
import 'package:flutter_desktop_plant/utils/colors.dart';
import 'package:flutter_desktop_plant/utils/extensions.dart';
import 'package:flutter_desktop_plant/utils/text_styles.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';
import 'package:flutter_desktop_plant/utils/extensions.dart';

class WDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<StateManager>(
        builder: (context, manager, child) {
          if (manager.selectedPlant != null)
            return Stack(
              children: [
                Container(
                  height: context.screenHeight(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 18,
                  ),
                  width: context.screenWidth(percent: .25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: context.screenHeight(percent: .45),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                    manager.selectedPlant.imgUrl,
                                  ),
                                ),
                              ),
                              width: double.infinity,
                              // height: ,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "${manager.selectedPlant.name}",
                              style: primaryTextStyle.apply(
                                fontWeightDelta: 3,
                                fontSizeDelta: 3,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              manager.selectedPlant.description,
                              style: primaryTextStyle.apply(
                                fontSizeDelta: -3,
                                color: Colors.grey.withOpacity(.8),
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: manager.selectedPlant.isSaved
                                        ? BorderRadius.circular(12)
                                        : null,
                                    color: manager.selectedPlant.isSaved
                                        ? Colors.redAccent.withOpacity(
                                            .1,
                                          )
                                        : Colors.transparent,
                                  ),
                                  child: Icon(
                                    manager.selectedPlant.isSaved
                                        ? FlutterIcons.heart_ant
                                        : FlutterIcons.hearto_ant,
                                    color: Colors.redAccent,
                                    size: 18,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Container(
                                    child: ElevatedButton(
                                      child: Text(
                                          "\$${manager.selectedPlant.price} - Add to cart"),
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
                                          vertical: 18,
                                          horizontal: 12,
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Image.network(src)
                    ],
                  ),
                ),
                Positioned(
                  top: 36,
                  right: 24,
                  child: GestureDetector(
                    onTap: () {
                      manager.clearSelection();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(.1),
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(6),
                      child: Icon(
                        FlutterIcons.close_evi,
                      ),
                    ),
                  ),
                ),
              ],
            );

          return Container(
            height: context.screenHeight(),
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 18,
            ),
            width: context.screenWidth(percent: .25),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          );
        },
      );
}
