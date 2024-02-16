import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_demo_07_todolist/base/base_event.dart';
import 'package:flutter_demo_07_todolist/event/add_todo_event.dart';
import 'package:flutter_demo_07_todolist/event/delete_todo_event.dart';
import 'package:flutter_demo_07_todolist/model/todo.dart';
import 'package:http/http.dart' as http;

class ToDoBloc extends Bloc<BaseEvent, ToDo> {
  ToDoBloc() : super(ToDo(0, '')) {
    on<AddToDoEvent>((event, emit) async {
      final ToDo toDo = event.toDo; // Lấy giá trị text từ sự kiện
      final String text = toDo.content;
      print('Add: $text');

      final dio = Dio();
      final token =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ7XCJVc2VyTmFtZVwiOlwic3lzYWRtaW5cIixcIlBhc3N3b3JkXCI6bnVsbCxcIkxhbmd1YWdlXCI6XCJWTlwifSIsImp0aSI6IjM5MDcyMDM4LWViM2UtNDA2My1hMzA1LWNlOWNhYmFiNDQxNyIsImV4cCI6MTcwODE1Mzc5OCwiaXNzIjoiYmJvcy52biIsImF1ZCI6ImJib3Mudm4ifQ.BpBk5HvmYfFjBvhOQuliEC8MhDk4y1HVvsQ3DBq_Vhg';
      dio.options.headers['Authorization'] = '$token';

      try {
        // Tạo một Map chứa dữ liệu muốn gửi lên server
        Map<String, dynamic> data = {
          'Id': '1',
          'Content': '$text',
        };

        var url = Uri.https(
            'localhost:7287', '/api/bbosone/MobileProject/TestSaveToDo');

        var url1 =
            'https://localhost:7287/api/bbosone/MobileProject/TestSaveToDo';

        var response = await http.post(url, body: data);

        Response response1 = await dio.post(url1, data: json.encode(data));

        print(response.body);
        print(response1.data);
      } catch (e) {
        print('Error: $e');
      }
      //emit(state);
    });

    on<DeleteToDoEvent>((event, emit) {
      final ToDo toDo = event.toDo; // Lấy giá trị text từ sự kiện
      final String text = toDo.content;
      print('Delete: $text');
      //emit(state);
    });
  }
}
