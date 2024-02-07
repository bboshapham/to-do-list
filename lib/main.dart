import 'package:flutter/material.dart';
import 'todo/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: const Color(0xff3987EA),
              title: const Center(
                child: Text('To Do List',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )),
          body: const ToDoListPage(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
