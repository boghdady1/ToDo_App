import 'package:flutter/material.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(
        title: Container(
            alignment: Alignment.topLeft,
            child: Text('To Do', style: Theme.of(context).textTheme.bodyLarge)),
    ),)
    ;
  }
}
