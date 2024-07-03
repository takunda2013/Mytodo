
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isDone;
  final Function(bool?) onChanged;

  const TaskTile(
      {required this.title,
      required this.isDone,
      required this.onChanged,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Checkbox(
        onChanged: onChanged,
        value: isDone,
      ),
    );
  }
}
