// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:uuid/uuid.dart';

enum Filter {
  all,
  active,
  completed,
}

Uuid uuid = Uuid();

class Todo {
  final String id;
  final String description;
  final bool completed;
  Todo({
    String? id,
    required this.description,
    this.completed = false,
  }) : this.id = id ?? uuid.v4();

  @override
  bool operator ==(covariant Todo other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.description == description &&
        other.completed == completed;
  }

  @override
  int get hashCode => id.hashCode ^ description.hashCode ^ completed.hashCode;

  @override
  String toString() =>
      'Todo(id: $id, description: $description, completed: $completed)';
}
