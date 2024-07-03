import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskProvider with ChangeNotifier{
  final List <Task>  _tasks = []
 ;
 List <Task> get tasks{
  return [..._tasks];
 }

 void addTask(Task task){
    _tasks.add(task);
    notifyListeners();
 }



}