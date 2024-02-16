import 'package:flutter_demo_07_todolist/model/todo.dart';

import '../base/base_event.dart';

class AddToDoEvent extends BaseEvent {
  final ToDo toDo;

  AddToDoEvent({required this.toDo});
}
