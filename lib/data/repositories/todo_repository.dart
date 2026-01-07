import 'package:hive/hive.dart';
import 'package:todo_app/core/services/db/hive/todo_box.dart';
import 'package:todo_app/data/models/todo_model.dart';

class TodoRepository {
  final Box<TodoModel> _todoBox = todoBox;

  // Get todos
  List<TodoModel> getTodos() => _todoBox.values.toList();

  // Get a todo by title
  TodoModel? getTodo(String title) => _todoBox.get(title);

  // Add a new todo
  Future<void> addTodo(TodoModel todo) async {
    if (_todoBox.containsKey(todo.title)) {
      throw Exception("Todo already exists");
    }

    await _todoBox.put(todo.title, todo);
  }

  // Delete a todo
  Future<void> deleteTodo(String title) async {
    await _todoBox.delete(title);
  }
}
