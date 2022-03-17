import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Hello extends StatelessWidget {
  const Hello({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenWidth(25)),
      child: Stack(
        clipBehavior: Clip.none, alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/home_bg.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: getProportionateScreenHeight(315),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenHeight(80)),
              Text(
                "",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(73),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 0.5),
              ),
              Text(
                "Visit the history",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Positioned(
            bottom: getProportionateScreenWidth(-25), child: null,
     
          )
        ],
      ),
    );
  }
}
