part of 'todo_search_bloc.dart';

class TodoSearchState {
  final String searchTerm;
  TodoSearchState({
    required this.searchTerm,
  });

  factory TodoSearchState.initial() => TodoSearchState(searchTerm: '');

  @override
  bool operator ==(covariant TodoSearchState other) {
    if (identical(this, other)) return true;

    return other.searchTerm == searchTerm;
  }

  @override
  int get hashCode => searchTerm.hashCode;

  @override
  String toString() => 'TodoSearchState(searchTerm: $searchTerm)';

  TodoSearchState copyWith({
    String? searchTerm,
  }) {
    return TodoSearchState(
      searchTerm: searchTerm ?? this.searchTerm,
    );
  }
}
