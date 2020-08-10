import 'package:flutter/material.dart';

// class NewTaskEditor extends StatefulWidget {
//   NewTaskEditor({Key key, @required this.onSave}) : super(key: key);

//   final OnSaveCallBack onSave;

//   @override
//   // _NewTaskEditorState createState() => _NewTaskEditorState();
//   State<StatefulWidget> createState() {
//     return _NewTaskEditorState();
//   }
// }

// class _NewTaskEditorState extends State<NewTaskEditor> {
//   Map _task = {"title": "", "description": ""};

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: SingleChildScrollView(
//           child: Column(
//         children: <Widget>[
//           Container(
//               padding: EdgeInsets.all(7),
//               child: TextField(
//                 maxLines: 2,
//                 controller: TextEditingController(text: this._task["title"]),
//                 decoration: InputDecoration(
//                     hintStyle: TextStyle(fontSize: 30),
//                     hintText: "Tarefa",
//                     border: InputBorder.none),
//                 onChanged: (text) {
//                   setState(() {
//                     this._task["title"] = text;
//                     print(this._task["title"]);
//                   });
//                 },

//                 // onSubmitted: ,
//               )),
//           Container(
//               padding: EdgeInsets.all(7),
//               child: TextField(
//                 maxLines: 10,
//                 controller:
//                     TextEditingController(text: this._task["description"]),
//                 decoration: InputDecoration(
//                     labelStyle: TextStyle(fontSize: 22),
//                     hintStyle: TextStyle(fontSize: 22),
//                     hintText: "Descrição",
//                     border: InputBorder.none),
//                 onChanged: (text) {
//                   setState(() {
//                     this._task["description"] = text;
//                   });
//                 },
//               )),
//           Row(
//             children: <Widget>[
//               FlatButton(
//                   onPressed: () {
//                     widget.onSave({
//                       "title": this._task["title"],
//                       "description": this._task["description"]
//                     });
//                     print("Saved");

//                   },
//                   child: Text("Save"))
//             ],
//           )
//         ],
//       )),
//     ));
//   }
// }

class NewTaskEditor extends StatefulWidget {
  NewTaskEditor({Key key, @required this.onSave}) : super(key: key);

  final OnSaveCallBack onSave;

  @override
  // _NewTaskEditorState createState() => _NewTaskEditorState();
  State<StatefulWidget> createState() {
    return _NewTaskEditorState();
  }
}

class _NewTaskEditorState extends State<NewTaskEditor> {
  Map _task = {"title": "", "description": ""};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(7),
              child: TextField(
                maxLines: 2,
                controller: TextEditingController(text: this._task["title"]),
                decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 30),
                    hintText: "Tarefa",
                    border: InputBorder.none),
                onChanged: (text) {
                  setState(() {
                    this._task["title"] = text;
                    print(this._task["title"]);
                  });
                },

                // onSubmitted: ,
              )),
          Container(
              padding: EdgeInsets.all(7),
              child: TextFormField(
                onSaved: (text) {
                  setState(() {
                    this._task["description"] = text;
                  });
                },
              )),
          Row(
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    widget.onSave({
                      "title": this._task["title"],
                      "description": this._task["description"]
                    });
                    print("Saved");
                  },
                  child: Text("Save"))
            ],
          )
        ],
      )),
    ));
  }
}

typedef OnSaveCallBack = void Function(Map<String, String> newTask);
