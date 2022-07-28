import 'package:flutter/material.dart';
import 'package:todoapp_algorizatask2/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'go shopping'),
    Task(name: 'buy new book'),
    Task(name: 'having dinner'),
  ];

  void addTask (String newTasktitle) {
    tasks.add(Task(name: newTasktitle));
    notifyListeners();
  }

  void updateTask (Task task){
    task.doneChanged();
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}