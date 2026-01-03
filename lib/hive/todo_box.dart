import 'package:hive_flutter/hive_flutter.dart';

Box<String> get todoBox => Hive.box<String>('todos');
