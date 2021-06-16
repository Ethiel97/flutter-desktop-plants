import 'package:flutter/material.dart';
import 'package:flutter_desktop_plant/models/plant.dart';
import 'package:flutter_desktop_plant/widgets/f_search_bar.dart';
import 'package:flutter_desktop_plant/utils/extensions.dart';
import 'package:flutter_desktop_plant/widgets/w_plant.dart';

class WMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      alignment: Alignment.topCenter,
      width: context.screenWidth(
        percent: .5,
      ),
      child: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 8,
        ),
        children: [
          FSearchBar(),
          SizedBox(
            height: 12,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 2.0,
              childAspectRatio: 4/5.8
            ),
            itemBuilder: (context, index) => WPlant(
              plant: data[index],
            ),
          ),
        ],
      ),
    );
}
