import 'package:flutter/material.dart';

class DismissibleWidgets extends StatefulWidget {
  const DismissibleWidgets({Key? key});

  @override
  State<DismissibleWidgets> createState() => _DismissibleWidgetsState();
}

class _DismissibleWidgetsState extends State<DismissibleWidgets> {
  List<String> tasks = ['Task 1', 'Task 2', 'Task 3'];

  TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text('To-Do List')),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return Dismissible(
            key: Key(task),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Removed $task'),
                    backgroundColor: Colors.red,
                  ),
                );
                setState(() {
                  tasks.removeAt(index);
                });
              }
            },
            child: ListTile(
              title: Text(task),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTaskDialog(context);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }

  void _showAddTaskDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add a Task'),
          content: TextField(
            controller: taskController,
            decoration: InputDecoration(
              hintText: 'Enter your task',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Add'),
              onPressed: () {
                String newTask = taskController.text;
                if (newTask.isNotEmpty) {
                  setState(() {
                    tasks.add(newTask);
                  });
                  taskController.clear();
                }
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                taskController.clear();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
