import 'package:flutter/material.dart';

class TaskDetailScreen extends StatelessWidget {
  // final String taskId;

  const TaskDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detailed"),
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.grey[700],
            elevation: 40.0,
            child: Column(
              children: [
                Image.asset('assets/images/programming.jpg'),
                const Text('life as a student')
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Card(
            color: Colors.grey[700],
            elevation: 40.0,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/programming.jpg',
                  fit: BoxFit.contain,
                ),
                const Text('life as a student')
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Card(
            color: Colors.grey[700],
            elevation: 40.0,
            child: Column(
              children: [
                Image.asset('assets/images/programming.jpg'),
                const Text('life as a student')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
