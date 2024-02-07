import 'package:flutter/material.dart';

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
            title: const Center(child: Text('To Do List', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
        )),
        body: const MyHomePage(),
      ),
    ),
    debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return _buildHeader();
  }

  Widget _buildHeader(){
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
      children: [
      Expanded(child: TextFormField(
          decoration: const InputDecoration(label: Text('Enter a task'), hintText: 'Enter a task'),
        )),
        ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.add), label:const Text('Add'))
      ],
    ));
  }
}