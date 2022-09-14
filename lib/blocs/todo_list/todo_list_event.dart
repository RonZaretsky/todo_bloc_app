// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'todo_list_bloc.dart';

abstract class TodoListEvent extends Equatable {
  const TodoListEvent();

  @override
  List<Object> get props => [];
}

class AddTodoEvent extends TodoListEvent {
  final String todoDescription;
  AddTodoEvent({
    required this.todoDescription,
  });

  @override
  String toString() => 'AddTodoEvent(todoDescription: $todoDescription)';

  @override
  List<Object> get props => [todoDescription];
}

class EditTodoEvent extends TodoListEvent {
  final String id;
  final String newDescription;
  EditTodoEvent({
    required this.id,
    required this.newDescription,
  });

  @override
  String toString() =>
      'EditTodoEvent(id: $id, newDescription: $newDescription)';

  @override
  List<Object> get props => [id, newDescription];
}

class ToggleTodoEvent extends TodoListEvent {
  final String id;
  ToggleTodoEvent({
    required this.id,
  });

  @override
  String toString() => 'ToggleTodoEvent(id: $id)';

  @override
  List<Object> get props => [id];
}

class RemoveTodoEvent extends TodoListEvent {
  final Todo todo;
  RemoveTodoEvent({
    required this.todo,
  });

  @override
  String toString() => 'RemoveTodoEvent(todo: $todo)';

  @override
  List<Object> get props => [todo];
}
