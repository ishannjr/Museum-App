import 'package:flutter/material.dart';
import 'package:travel/screens/events/events_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(kDefaultPadding),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(16),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap:  () {
                  Navigator.push(
                      context,
                      
                      MaterialPageRoute(
                        builder: (context) => EventsScreen(),
                      ));
                },
            child: Text("See All"),
          ),
        ],
      ),
    );
  }
}
