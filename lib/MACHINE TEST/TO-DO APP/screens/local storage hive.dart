

import 'package:flutter/cupertino.dart';
import 'package:readky/MACHINE%20TEST/TO-DO%20APP/screens/task.dart';


import '../model/task model.dart';

class TaskViewModel extends ChangeNotifier {
  List<Task> _pendingTasks = [];
  List<Task> _completedTasks = [];

  List<Task> get pendingTasks => _pendingTasks;
  List<Task> get completedTasks => _completedTasks;

  TaskViewModel() {
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    _pendingTasks = TaskStorage.getPendingTasks();
    _completedTasks = TaskStorage.getCompletedTasks();
    notifyListeners();
  }

  Future<void> addTask(Task task) async {
    await TaskStorage.addTask(task);
    await _loadTasks();
  }

  Future<void> toggleTaskCompletion(int index) async {
    await TaskStorage.toggleTaskCompletion(index);
    await _loadTasks();
  }

  Future<void> deleteTask(int index) async {
    await TaskStorage.deleteTask(index);
    await _loadTasks();
  }
}