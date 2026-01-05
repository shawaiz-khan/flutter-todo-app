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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueAccent.shade200,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          toolbarHeight: 80,
          // centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // Routes
      initialRoute: AppRoutes.authGate,
      routes: AppRoutes.routes,
    );
  }
}
