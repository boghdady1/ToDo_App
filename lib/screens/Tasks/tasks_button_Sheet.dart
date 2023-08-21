import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksButtonSheet extends StatelessWidget {
  const TasksButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text("Add New Task",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
        )
      ],
    );
  }
}
