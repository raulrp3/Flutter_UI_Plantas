import 'package:flutter/material.dart';
import 'package:plant_app/components/title_with_custom_underline_widget.dart';
import 'package:plant_app/shared/constant.dart';

class TitleWithButtonMoreWidget extends StatelessWidget {
  final String title;

  TitleWithButtonMoreWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Row(
        children: <Widget>[
          TitleWithCustomInderlineWidget(
            title: this.title,
          ),
          Spacer(),
          FlatButton(
            color: kPrimaryColor,
            onPressed: () {},
            child: Text(
              'Más',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}
