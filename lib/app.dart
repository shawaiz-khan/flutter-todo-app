import 'package:flutter/material.dart';
import 'package:todo_app/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Color Themes
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          elevation: 0,
          toolbarHeight: 60,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // Routes
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
    );
  }
}
