import 'package:flutter/material.dart';
import 'package:plant_app/components/custom_item_widget.dart';
import 'package:plant_app/components/custom_other_item_widget.dart';
import 'package:plant_app/components/header_with_searchbar_widget.dart';
import 'package:plant_app/components/title_with_button_more_widget.dart';
import 'package:plant_app/shared/constant.dart';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchbarWidget(),
          TitleWithButtonMoreWidget(
            title: 'Recomendadas',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CustomItemWidget(
                  image: 'assets/images/image_1.png',
                  title: 'Samantha',
                  country: 'Rusia',
                  price: '440',
                ),
                CustomItemWidget(
                  image: 'assets/images/image_2.png',
                  title: 'Angelica',
                  country: 'EEUU',
                  price: '440',
                ),
                CustomItemWidget(
                  image: 'assets/images/image_1.png',
                  title: 'Margarita',
                  country: 'España',
                  price: '440',
                ),
              ],
            ),
          ),
          TitleWithButtonMoreWidget(
            title: 'Próximas plantas',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CustomOtherItemWidget(
                  image: 'assets/images/bottom_img_1.png',
                ),
                CustomOtherItemWidget(
                  image: 'assets/images/bottom_img_2.png',
                )
              ],
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
