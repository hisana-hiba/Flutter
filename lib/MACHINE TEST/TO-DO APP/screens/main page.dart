

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readky/MACHINE%20TEST/TO-DO%20APP/screens/task.dart';


import 'local storage hive.dart';
import '../model/task model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TaskStorage.init();
  runApp(MyTodo());
}

class MyTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskViewModel(),
      child: MaterialApp(
        title: 'To-Do App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),debugShowCheckedModeBanner: false,
        home: ToDoPage(),
      ),
    );
  }
}

class ToDoPage extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final taskViewModel = Provider.of<TaskViewModel>(context);

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text('To-Do App')),
      body: Column(

        children: [

          TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                       hintText: "Title",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                    ),
                  ),
          SizedBox(height: 15,),

                TextField(
                    controller: _descriptionController,
                    decoration: InputDecoration(
                      hintText: "Description",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                       ),
                  ),
                SizedBox(height: 15,),

                TextButton(
                    onPressed: (){
                      final task = Task(
                        title: _titleController.text,
                        description: _descriptionController.text,
                      );
                      taskViewModel.addTask(task);
                      _titleController.clear();
                      _descriptionController.clear();
                    }, child: Text("Add")),


          Expanded(
            child: ListView(
              children: [
                SectionTitle(title: 'Pending Tasks'),
                ...taskViewModel.pendingTasks.map((task) => TaskTile(
                  task: task,
                  onToggle: () {
                    taskViewModel.toggleTaskCompletion(
                        taskViewModel.pendingTasks.indexOf(task));
                  },
                  onDelete: () {
                    taskViewModel.deleteTask(
                        taskViewModel.pendingTasks.indexOf(task));
                  },
                )),
                SectionTitle(title: 'Completed Tasks'),
                ...taskViewModel.completedTasks.map((task) => TaskTile(
                  task: task,
                  onToggle: () {
                    taskViewModel.toggleTaskCompletion(
                        taskViewModel.completedTasks.indexOf(task));
                  },
                  onDelete: () {
                    taskViewModel.deleteTask(
                        taskViewModel.completedTasks.indexOf(task));
                  },
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  SectionTitle({required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }
}

class TaskTile extends StatelessWidget {
  final Task task;
  final VoidCallback onToggle;
  final VoidCallback onDelete;

  TaskTile({
    required this.task,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.title),
      subtitle: Text(task.description),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(task.isCompleted ? Icons.undo : Icons.check),
            onPressed: onToggle,
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}