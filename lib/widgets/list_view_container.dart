import 'package:flutter/material.dart';
import 'package:todo_app/hive/todo_box.dart';

class ListViewContainer extends StatelessWidget {
  final List<String> todoList;
  const ListViewContainer({required this.todoList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (context, index) {
        final item = todoList[index];

        return Dismissible(
          key: Key(item + index.toString()), // ensure unique key
          direction: DismissDirection.endToStart,
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.all(10),
            child: const Icon(Icons.delete, color: Colors.white),
          ),
          onDismissed: (direction) {
            todoBox.deleteAt(
              todoList.length - 1 - index,
            ); // because we reversed the list

            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('$item removed')));
          },
          child: Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(item, style: const TextStyle(fontSize: 20)),
            ),
          ),
        );
      },
    );
  }
}
