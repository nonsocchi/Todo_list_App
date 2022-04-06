import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:todo_app/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  const TaskList({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
        textTile: widget.tasks[index].taskName,
        isChecked: widget.tasks[index].isDone,
        checkboxCallback: (checkboxState) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        },
      ),
      itemCount: widget.tasks.length,
    );
  }
}
