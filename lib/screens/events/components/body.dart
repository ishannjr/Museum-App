import 'package:flutter/material.dart';
import 'package:travel/components/place_card.dart';
import 'package:travel/constants.dart';
import 'package:travel/models/TravelSpot.dart';
import 'package:travel/screens/events/components/hello.dart';
import 'package:travel/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 25,
              children: [
                ...List.generate(
                  travelSpots.length,
                  (index) => PlaceCard(
                    travelSport: travelSpots[index],
                    isFullCard: true,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Hello(),
                          ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
