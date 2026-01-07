import 'package:flutter/material.dart';
import 'package:todo_app/features/auth/presentation/screens/auth_gate.dart';
import 'package:todo_app/features/auth/presentation/screens/login_screen.dart';
import 'package:todo_app/features/auth/presentation/screens/register_screen.dart';
import 'package:todo_app/features/home/presentation/screens/home_screen.dart';

class AppRoutes {
  static const String authGate = '/';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';

  static Map<String, WidgetBuilder> routes = {
    authGate: (context) => const AuthGate(),
    home: (context) => const HomeScreen(),
    login: (context) => const LoginScreen(),
    register: (context) => const RegisterScreen(),
  };
}
