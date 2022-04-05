import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:todo_app/models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(taskName: 'buy stuff'),
    Task(taskName: 'buy more stuff'),
    Task(taskName: 'buy way more stuff'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
        textTile: tasks[index].taskName,
        isChecked: tasks[index].isDone,
      ),
      itemCount: tasks.length,
    );
  }
}
