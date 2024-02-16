import 'package:flutter/material.dart';
import 'todo_header.dart';
import 'todo_list.dart';

class ToDoListPage extends StatelessWidget {
  const ToDoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ToDoHeader(),
        const Expanded(child: ToDoList()),
      ],
    );
  }
}
