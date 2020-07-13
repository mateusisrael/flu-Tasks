import 'package:flutter/material.dart';
import 'Tasks.dart';

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  Map _myState = {
    "selectedTask": "",
    "tasks": [
      {"title": "Lavar louça", "description": "Lavar a louça antes de dormir"},
      {"title": "Meditar", "description": "Meditação profunda"},
      {"title": "Arrumar a cama", "description": "Arrumar a cama para dormir"},
      {"title": "Estudar Programação", "description": "Estudar Programação"}
    ]
  };

  @override
  Widget build(BuildContext context) {

    print(_myState["selectedTask"]);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromRGBO(37, 42, 49, 1),
            onPressed: () {},
            child: Icon(Icons.add)),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                backgroundColor: Color.fromRGBO(37, 42, 49, 1),
                expandedHeight: 100,
                flexibleSpace: FlexibleSpaceBar(
                    title: Text("Today",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                    background: Container(
                      color: Color.fromRGBO(37, 42, 49, 1),
                    ))),
            SliverFillRemaining(
              child: Tasks(
                  tasks: _myState["tasks"],
                  selectTask: (title) {
                    setState(() {
                      _myState["selectedTask"] = title;
                    });
                  }),
              // Container(
              //   child: Text(
              //     _myState["selectedTask"].toString()
              //     // _myState["selectedTask"] == null ? "Nenhuma tarefa selecionada" : _myState["selectedTask"]
              //   ),
              // )
            )
          ],
        ));
  }
}
