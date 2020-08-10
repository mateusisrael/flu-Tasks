import 'package:flutter/material.dart';
import './screens/Home.dart';
import './screens/NewTaskEditor.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Today',
      initialRoute: '/',
      routes: {
        '/': (context) => MyList(),
        '/newTask': (context) => NewTaskEditor()
      },
    );
  }
}
