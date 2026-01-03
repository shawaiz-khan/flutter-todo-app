import 'package:flutter/material.dart';
import 'package:todo_app/app.dart';
import 'package:todo_app/hive/hive_init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();
  runApp(const MyApp());
}
