import 'package:bloc/bloc.dart';
import 'package:flutter_demo_07_todolist/base/base_event.dart';
import 'package:flutter_demo_07_todolist/event/add_todo_event.dart';
import 'package:flutter_demo_07_todolist/event/delete_todo_event.dart';
import 'package:flutter_demo_07_todolist/model/todo.dart';

class ToDoBloc extends Bloc<BaseEvent, ToDo> {
  ToDoBloc() : super(ToDo(0, '')) {
    on<AddToDoEvent>((event, emit) {
      final ToDo toDo = event.toDo; // Lấy giá trị text từ sự kiện
      final String text = toDo.content;
      print('Add: $text');
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
