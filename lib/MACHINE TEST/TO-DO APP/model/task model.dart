

import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../screens/task.dart';

class TaskStorage {
  static late Box<Task> _taskBox;

  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TaskAdapter());
    _taskBox = await Hive.openBox<Task>('tasks');
  }

  static Future<void> addTask(Task task) async {
    await _taskBox.add(task);
  }

  static List<Task> getPendingTasks() {
    return _taskBox.values.where((task) => !task.isCompleted).toList();
  }

  static List<Task> getCompletedTasks() {
    return _taskBox.values.where((task) => task.isCompleted).toList();
  }

  static Future<void> toggleTaskCompletion(int index) async {
    final task = _taskBox.getAt(index);
    if (task != null) {
      task.isCompleted = !task.isCompleted;
      //await task.save();
    }
  }

  static Future<void> deleteTask(int index) async {
    await _taskBox.deleteAt(index);
  }
}