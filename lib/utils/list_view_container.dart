import 'package:flutter/material.dart';

class ListViewContainer extends StatefulWidget {
  final List<String> todoList;

  const ListViewContainer({required this.todoList, super.key});

  @override
  State<ListViewContainer> createState() => _ListViewContainerState();
}

class _ListViewContainerState extends State<ListViewContainer> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.todoList.length,
      itemBuilder: (context, index) {
        final item = widget.todoList[index];

        return Dismissible(
          key: Key(item), // each key must be unique
          direction: DismissDirection.endToStart, // swipe from right to left
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.all(10),
            child: Icon(Icons.delete, color: Colors.white),
          ),
          onDismissed: (direction) {
            setState(() {
              widget.todoList.removeAt(index);
            });

            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('$item removed')));
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(0),
            ),
            margin: EdgeInsets.all(10),
            child: ListTile(title: Text(item, style: TextStyle(fontSize: 20))),
          ),
        );
      },
    );
  }
}
