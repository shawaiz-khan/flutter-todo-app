import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/data/models/todo_model.dart';

Box<TodoModel> get todoBox => Hive.box<TodoModel>('todos');
