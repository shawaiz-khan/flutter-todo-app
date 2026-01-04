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
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 80,
          // centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // Routes
      initialRoute: AppRoutes.login,
      routes: AppRoutes.routes,
    );
  }
}
