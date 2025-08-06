import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/task_viewmodel.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final taskVM = Provider.of<TaskViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Add Task")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(labelText: "Title"),
              validator: (val) => val!.isEmpty ? 'Required' : null,
            ),
            TextFormField(
              controller: descController,
              decoration: const InputDecoration(labelText: "Description"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final picked = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2100),
                  initialDate: selectedDate,
                );
                if (picked != null) {
                  setState(() => selectedDate = picked);
                }
              },
              child: Text("Due Date: ${selectedDate.toLocal()}".split(' ')[0]),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  taskVM.addTask(
                    titleController.text,
                    descController.text,
                    selectedDate,
                  );
                  Navigator.pop(context);
                }
              },
              child: const Text("Save Task"),
            )
          ]),
        ),
      ),
    );
  }
}
