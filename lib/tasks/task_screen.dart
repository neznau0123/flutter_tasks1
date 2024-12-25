import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  final String taskId;

  const TaskScreen({Key? key, required this.taskId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Здесь вы можете добавить логику для получения данных задачи по taskId
    // и отображения соответствующей информации.

    return Scaffold(
      appBar: AppBar(
        title: Text('Task Details'),
      ),
      body: Center(
        child: Text('Details for task: $taskId'),
      ),
    );
  }
}
