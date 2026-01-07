import 'package:hive/hive.dart';
import 'package:todo_app/core/services/db/hive/user_box.dart';
import 'package:todo_app/data/models/user_model.dart';

class UserRepository {
  final Box<UserModel> _userBox = userBox;

  // Get user by username
  UserModel? getUser(String username) => _userBox.get(username);

  // Add a new user
  Future<void> addUser(UserModel user) async {
    if (_userBox.containsKey(user.username)) {
      throw Exception("Username already exists");
    }

    await _userBox.put(user.username, user);
  }

  // Delete a user
  Future<void> deleteUser(String username) async {
    await _userBox.delete(username);
  }
}
