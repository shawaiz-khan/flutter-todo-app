import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/data/models/user_model.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  // Have to manage the isDone first via checkboxes
  // await Hive.openBox<TodoModel>('todos');

  Hive.registerAdapter(UserModelAdapter());

  await Hive.openBox<String>('todos');
  await Hive.openBox<UserModel>('users');
}
