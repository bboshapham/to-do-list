import 'package:flutter/material.dart';

class ToDoHeader extends StatelessWidget{
  const ToDoHeader({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
                child: TextFormField(
              decoration: const InputDecoration(
                  label: Text('Enter a task'), hintText: 'Enter a task'),
            )),
            const SizedBox(width: 10),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add'))
          ],
        ));
  }
  
}