import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo_07_todolist/bloc/todo_bloc.dart';
import 'package:flutter_demo_07_todolist/event/add_todo_event.dart';

import '../model/todo.dart';

class ToDoHeader extends StatelessWidget {
  ToDoHeader({super.key});
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: BlocProvider(
            create: (context) => ToDoBloc(),
            child: BlocBuilder<ToDoBloc, ToDo>(
              builder: (context, state) {
                return Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                          label: Text('Enter a task'),
                          hintText: 'Enter a task'),
                      controller: _textController,
                    )),
                    const SizedBox(width: 10),
                    ElevatedButton.icon(
                        onPressed: () {
                          var newTodo = ToDo(0, _textController.text);
                          context
                              .read<ToDoBloc>()
                              .add(AddToDoEvent(toDo: newTodo));
                        },
                        icon: const Icon(Icons.add),
                        label: const Text('Add'))
                  ],
                );
              },
            )));
  }
}
