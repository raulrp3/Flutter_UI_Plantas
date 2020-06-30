import 'package:flutter/material.dart';
import 'package:plant_app/shared/constant.dart';

class TitleWithCustomInderlineWidget extends StatelessWidget {
  final String title;

  TitleWithCustomInderlineWidget({this.title});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.035,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: kDefaultPadding / 4,
            ),
            child: Text(
              '${this.title}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(
                right: kDefaultPadding / 4,
              ),
              height: size.height * 0.01,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
