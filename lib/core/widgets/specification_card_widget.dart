import 'package:flutter/material.dart';

import 'package:flutter_profile/core/theme/my_colors.dart';

class SpecificationCardWidget extends StatelessWidget {
  const SpecificationCardWidget({
    Key key,
    @required this.brandColor,
    @required this.icon,
    @required this.iconColor,
    @required this.title,
    @required this.subTitle,
  }) : super(key: key);

  final Color brandColor;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecoration(),
      child: buildCard(context),
    );
  }

  Card buildCard(context) {
    return Card(
      color: MyColors.WHITE,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: buildMainColumn(context),
      ),
    );
  }

  Column buildMainColumn(context) {
    return Column(
      children: <Widget>[
        buildBrand(),
        SizedBox(height: 7),
        buildTitleText(context),
        SizedBox(height: 4),
        buildSubTitleText(context),
      ],
    );
  }

  Text buildSubTitleText(context) =>
      Text(subTitle, style: Theme.of(context).textTheme.bodyText1);

  Text buildTitleText(context) =>
      Text(title, style: Theme.of(context).textTheme.headline3);

  Container buildBrand() {
    return Container(
      decoration: BoxDecoration(
        color: brandColor,
        borderRadius: new BorderRadius.only(
          bottomLeft: const Radius.circular(20.0),
          bottomRight: const Radius.circular(20.0),
        ),
      ),
      height: 63,
      width: 53,
      child: buildBrandIcon(),
    );
  }

  Padding buildBrandIcon() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Icon(icon, size: 32, color: iconColor),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.white60,
        blurRadius: 123.0,
      ),
    ]);
  }
}
