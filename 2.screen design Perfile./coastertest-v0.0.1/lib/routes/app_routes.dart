import 'package:coastertest/presentation/profile_screen.dart';
import 'package:flutter/material.dart';
class AppRoutes {
  static const String profileScreen = '/profile_screen';

  static Map<String, WidgetBuilder> routes = {
    profileScreen: (context) => ProfileScreen()
  };
}
