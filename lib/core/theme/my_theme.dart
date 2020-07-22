import 'package:flutter/material.dart';

import 'package:flutter_profile/core/theme/my_colors.dart';

final ThemeData myTheme = ThemeData(
    scaffoldBackgroundColor: MyColors.WHITE,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: MyColors.DARK_WHITE,
      iconTheme: IconThemeData(color: MyColors.BLACK),
      actionsIconTheme: IconThemeData(color: MyColors.BLACK),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: MyColors.GRAY),
      headline1: TextStyle(
        color: MyColors.BLACK,
        fontSize: 23,
        fontWeight: FontWeight.w500,
      ),
      headline2: TextStyle(
        color: MyColors.BLACK,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      headline3: TextStyle(
        color: MyColors.BLACK,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    ));
