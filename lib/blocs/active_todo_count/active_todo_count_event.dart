// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'active_todo_count_bloc.dart';

abstract class ActiveTodoCountEvent extends Equatable {
  const ActiveTodoCountEvent();

  @override
  List<Object> get props => [];
}

class CalculateActiveCountEvent extends ActiveTodoCountEvent {
  final int activeTodoCount;
  CalculateActiveCountEvent({
    required this.activeTodoCount,
  });

  @override
  String toString() =>
      'CalculateActiveCountEvent(activeTodoCount: $activeTodoCount)';

  @override
  List<Object> get props => [activeTodoCount];
}
