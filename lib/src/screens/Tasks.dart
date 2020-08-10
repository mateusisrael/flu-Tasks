import 'package:flutter/material.dart';

class Tasks extends StatefulWidget {
  Tasks({@required this.tasks, this.selectTask});

  final SelectCallback selectTask;

  final List tasks;

  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  Widget _box(Map<String, String> task) {
    return GestureDetector(
        onTap: () {
          widget.selectTask(task["title"]);
        },
        child: Container(
            margin: EdgeInsets.only(top: 2),
            color: Colors.grey[200],
            child: ListTile(
              title: Text(task["title"], style: TextStyle(fontSize: 17)),
            )));
  }

  @override
  Widget build(BuildContext context) {
    if (widget.tasks.length > 0) {
      return ListView.builder(
          // itemCount: _tasks.length + 1 * 2,
          itemCount: widget.tasks.length,
          itemBuilder: (context, i) {
            final currentTask = widget.tasks[i];
            return _box(currentTask);
            // return Container(child: Text("Teste"));
          });
    } else if (widget.tasks.length <= 0) {
      return Center(child: Text("Nenhuma tarefa"));
    }
  }
}

typedef SelectCallback = void Function(String title);
