import 'package:flutter/material.dart';
import 'package:note_app/page_adicionar_tarefa.dart';
import 'package:note_app/util/notas.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();

  List toDoList = [
    ['Tarefas', false]
  ];

  void saveNewTask() {
    setState(() {
      if (controller.text == '') {
      } else {
        toDoList.add([controller.text, false]);
        controller.clear();
        Navigator.of(context).pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 14, 16),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(1000, 145, 71, 255),
        centerTitle: true,
        elevation: 1,
        title: const Text('Lista de Tarefas'),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return Notas(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (bool? valor) {
              setState(() {
                toDoList[index][1] = valor!;
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  NovaTarefa(onPressed: saveNewTask, controller: controller),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
