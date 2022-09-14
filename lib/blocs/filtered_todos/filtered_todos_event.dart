// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'filtered_todos_bloc.dart';

abstract class FilteredTodosEvent extends Equatable {
  const FilteredTodosEvent();

  @override
  List<Object> get props => [];
}

class SetFilteredTodosEvent extends FilteredTodosEvent {
  final Filter filter;
  final List<Todo> todos;
  final String searchTerm;
  SetFilteredTodosEvent({
    required this.filter,
    required this.todos,
    required this.searchTerm,
  });

  @override
  String toString() =>
      'SetFilteredTodosEvent(filter: $filter, todos: $todos, searchTerm: $searchTerm)';

  @override
  List<Object> get props => [filter, todos, searchTerm];
}
