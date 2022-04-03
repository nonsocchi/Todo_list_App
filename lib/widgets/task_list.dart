import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: [
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
