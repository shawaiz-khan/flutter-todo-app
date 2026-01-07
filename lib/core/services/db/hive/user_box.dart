import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/data/models/user_model.dart';

Box<UserModel> get userBox => Hive.box<UserModel>("users");
