import 'package:todo_app/hive/todo_box.dart';

class TodoRepository {
  List<String> getTodos() => todoBox.values.toList();

  void addTodo(String title) => todoBox.add(title);

  void deleteTodo(int index) => todoBox.deleteAt(index);
}
