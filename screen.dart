import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../viewmodels/task_viewmodel.dart';
import '../models/task.dart';
import 'add_task_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskViewModel>(context);
    final tasks = taskProvider.tasks;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo Tasks"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: tasks.isEmpty
          ? const Center(child: Text("No tasks added yet!"))
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (_, i) {
                final task = tasks[i];
                return ListTile(
                  title: Text(
                    task.title,
                    style: TextStyle(
                        decoration: task.isCompleted
                            ? TextDecoration.lineThrough
                            : null),
                  ),
                  subtitle:
                      Text(DateFormat('yyyy-MM-dd').format(task.dueDate)),
                  trailing: Checkbox(
                    value: task.isCompleted,
                    onChanged: (_) =>
                        taskProvider.toggleComplete(task.id),
                  ),
                  onLongPress: () =>
                      taskProvider.deleteTask(task.id),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const AddTaskScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
