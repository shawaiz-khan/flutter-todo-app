import 'package:flutter/material.dart';
import 'package:todo_app/utils/dialog_box.dart';
import 'package:todo_app/utils/list_view_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> todoList = ["Hello"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 20),
        child: ListViewContainer(todoList: todoList),
      ),
      appBar: AppBar(title: Text("Home")),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newTask = await showDialog<String>(
            context: context,
            builder: (context) => DialogBox(),
          );

          if (newTask != null && newTask.isNotEmpty) {
            setState(() {
              todoList.insert(0, newTask);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
