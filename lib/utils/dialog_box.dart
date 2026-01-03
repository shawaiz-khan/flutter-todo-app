import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return AlertDialog(
      title: Text("Add a Task"),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: TextField(
        controller: controller,
        autocorrect: true,
        autofocus: true,
        decoration: InputDecoration(hintText: "e.g, this is a task"),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text("Cancel"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(controller.text);
          },
          child: Text("Done"),
        ),
      ],
    );
  }
}
