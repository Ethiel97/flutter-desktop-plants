import 'package:flutter/material.dart';
import 'package:flutter_desktop_plant/models/plant.dart';
import 'package:flutter_desktop_plant/providers/state_manager.dart';
import 'package:flutter_desktop_plant/utils/text_styles.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';

class WPlant extends StatefulWidget {
  final Plant plant;

  const WPlant({Key key, this.plant}) : super(key: key);

  @override
  _WPlantState createState() => _WPlantState();
}

class _WPlantState extends State<WPlant> {
  StateManager stateManager;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    stateManager = Provider.of<StateManager>(context);
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => stateManager.currentPlant = this.widget.plant,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.grey.withOpacity(.2),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          widget.plant.imgUrl,
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
                    "${widget.plant.name}",
                    style: primaryTextStyle.apply(
                      fontWeightDelta: 3,
                      fontSizeDelta: 3,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          ...List.generate(
                            widget.plant.rate.toInt(),
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
                      Text(
                        "(${widget.plant.reviews})",
                        style: primaryTextStyle.apply(
                          fontSizeDelta: -2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price",
                            style: primaryTextStyle.apply(
                              fontSizeDelta: -3,
                              color: Colors.grey.withOpacity(
                                .1,
                              ),
                            ),
                          ),
                          Text(
                            "\$ ${widget.plant.price}",
                            style: primaryTextStyle.apply(
                              fontWeightDelta: 5,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey.withOpacity(.4),
                            width: .5,
                          ),
                        ),
                        child: Text(
                          "Add to cart",
                          style: primaryTextStyle.apply(
                            fontSizeDelta: -2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 36,
              right: 36,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius:
                      widget.plant.isSaved ? BorderRadius.circular(12) : null,
                  color: widget.plant.isSaved
                      ? Colors.redAccent.withOpacity(
                          .1,
                        )
                      : Colors.transparent,
                ),
                child: Icon(
                  widget.plant.isSaved
                      ? FlutterIcons.heart_ant
                      : FlutterIcons.hearto_ant,
                  color: Colors.redAccent,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      );
}
