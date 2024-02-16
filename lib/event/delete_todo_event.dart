import '../base/base_event.dart';
import '../model/todo.dart';

class DeleteToDoEvent extends BaseEvent {
  final ToDo toDo;

  DeleteToDoEvent({required this.toDo});
}
