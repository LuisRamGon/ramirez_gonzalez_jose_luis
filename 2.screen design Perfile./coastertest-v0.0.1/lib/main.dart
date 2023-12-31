import 'package:flutter/material.dart';
import 'package:coastertest/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      title: 'coastertest',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.profileScreen,
      routes: AppRoutes.routes,
    );
  }
}
