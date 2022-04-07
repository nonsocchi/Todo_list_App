import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final currentTask = taskData.tasks[index];

            return TaskTile(
              textTile: currentTask.taskName,
              isChecked: currentTask.isDone,
              checkboxCallback: (checkboxState) =>
                  taskData.updateTask(currentTask),
              longPressCallback: () => taskData.deleteTask(currentTask),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
