import 'package:flutter/material.dart';
import 'package:todo_cubit/widgets/create_todo_widget.dart';
import 'package:todo_cubit/widgets/search_and_filter_widget.dart';
import 'package:todo_cubit/widgets/show_todos_widget.dart';

import '../widgets/todo_header_widget.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 40.0,
          ),
          child: Column(
            children: [
              TodoHeader(),
              CreateTodo(),
              SizedBox(height: 20.0),
              SearchAndFilterTodo(),
              ShowTodos()
            ],
          ),
        ),
      ),
    );
  }
}
