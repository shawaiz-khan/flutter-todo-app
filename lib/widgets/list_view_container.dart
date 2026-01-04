import 'package:flutter/material.dart';
import 'package:todo_app/hive/todo_box.dart';

class ListViewContainer extends StatelessWidget {
  final List<String> todoList;
  const ListViewContainer({required this.todoList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: todoList.length,
      itemBuilder: (context, index) {
        final item = todoList[index];

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Dismissible(
            key: ValueKey('$item-$index'),
            direction: DismissDirection.endToStart,

            background: Container(
              decoration: BoxDecoration(
                color: Colors.red.shade600,
                borderRadius: BorderRadius.circular(14),
              ),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(
                Icons.delete_outline,
                color: Colors.white,
                size: 26,
              ),
            ),

            onDismissed: (_) {
              todoBox.deleteAt(todoList.length - 1 - index);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    '${item.length > 50 ? "${item.substring(0, 50)} + ..." : item} removed',
                  ),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },

            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade100,
                borderRadius: BorderRadius.circular(14),
              ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                title: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
