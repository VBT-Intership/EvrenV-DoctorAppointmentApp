import 'package:flutter/material.dart';

import 'package:flutter_profile/view/profile_view.dart';
import 'package:flutter_profile/core/theme/my_theme.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Screen',
      theme: myTheme,
      home: ProfileView()
    );
  }
}