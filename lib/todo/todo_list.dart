import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ToDoListState();
  }
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(
            Icons.account_circle,
            color: Colors.blue,
          ),
          title: Text('To do $index',
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: const Text(
            'Description for task',
            style: TextStyle(fontSize: 10),
          ),
          trailing: GestureDetector(
            child: const Icon(Icons.delete, color: Colors.red),
            onTap: () {
              if (kDebugMode) {
                print('delete task completed!');
              }
            },
          ),
        );
      },
    );
  }
}
