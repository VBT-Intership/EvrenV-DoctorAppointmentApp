import 'package:flutter/material.dart';

class ListCardWidget extends StatelessWidget {
  const ListCardWidget(
      {Key key,
      @required this.icon,
      @required this.iconBgColor,
      @required this.iconColor,
      @required this.title,
      @required this.subTitle})
      : super(key: key);

  final IconData icon;
  final Color iconBgColor;
  final Color iconColor;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: iconBgColor,
              borderRadius: BorderRadius.all(Radius.circular(13))),
          child: Icon(
            icon,
            color: iconColor,
          )),
      title: Text(title, style: Theme.of(context).textTheme.headline2),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.bodyText1),
    );
  }
}