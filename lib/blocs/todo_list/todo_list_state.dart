part of 'todo_list_bloc.dart';

class TodoListState {
  final List<Todo> todos;
  TodoListState({
    required this.todos,
  });

  factory TodoListState.initial() => TodoListState(todos: [
        Todo(id: '1', description: 'Clean the room'),
        Todo(id: '2', description: 'Wash the dish'),
        Todo(id: '3', description: 'Do homework'),
      ]);

  TodoListState copyWith({
    List<Todo>? todos,
  }) {
    return TodoListState(
      todos: todos ?? this.todos,
    );
  }

  @override
  String toString() => 'TodoListState(todos: $todos)';

  @override
  bool operator ==(covariant TodoListState other) {
    if (identical(this, other)) return true;

    return listEquals(other.todos, todos);
  }

  @override
  int get hashCode => todos.hashCode;
}
