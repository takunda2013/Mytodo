import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/task_provider.dart';
import '../models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController _taskController = TextEditingController();

  AddTaskScreen({super.key});

  void _addTask(BuildContext context) {
    final taskText = _taskController.text;
    if (taskText.isNotEmpty) {
      Provider.of<TaskProvider>(context, listen: false).addTask(
        Task(
          id: DateTime.now().toString(),
          title: taskText,
          isDone: false,
        ),

      );
      Navigator.of(context).pop();
    }
    Navigator.of(context).pushNamed('/details');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _taskController,
              decoration: const InputDecoration(
                label: Text(
                  'Task',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () => _addTask(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                // padding: const EdgeInsets.all(20.0)
              ),
              child: const Text('Add Task'),
            ),
            // const CircularProgressIndicator(),
            // Image.network(
            //   'https://cdn.pixabay.com/photo/2024/02/21/15/28/dahlia-8587940_1280.jpg',
            //   fit: BoxFit.fill,
            // ),
            Image(
                image: const NetworkImage(
                    'https://cdn.pixabay.com/photo/2024/02/21/15/28/dahlia-8587940_1280.jpg'),
                fit: BoxFit.cover, // Adjust as needed
                loadingBuilder: (context, imageProvider, loadingProgress) {
                  if (loadingProgress == null) {
                    return const Image(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2013/10/18/09/15/flower-197343_1280.jpg'),
                        fit: BoxFit.fill);
                  } else {
                    return const CircularProgressIndicator();
                  }
                })
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 144, 178, 195),
    );
  }
}
