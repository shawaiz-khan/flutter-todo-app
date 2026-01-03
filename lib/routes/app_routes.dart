import 'package:flutter/material.dart';
import 'package:todo_app/screens/home_screen.dart';

class AppRoutes {
  static const String home = '/';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const HomeScreen(),
  };
}
