import 'package:flutter/material.dart';

class Notas extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?) onChanged;

  Notas(
      {required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(1000, 145, 71, 255),
          borderRadius: BorderRadius.circular(12),
        ),

        //Tarefas
        child: CheckboxListTile(
          title: Text(
            taskName,
            style: TextStyle(
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
          ),
          value: taskCompleted,
          activeColor: Colors.black,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
