import 'package:flutter/material.dart';
import 'package:plant_app/shared/constant.dart';

class CustomOtherItemWidget extends StatelessWidget {
  final String image;

  CustomOtherItemWidget({this.image});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding / 2,
      ),
      width: size.width * 0.8,
      height: size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(this.image),
        ),
      ),
    );
  }
}
