import 'package:flutter/material.dart';
import 'package:note_app/page_adicionar_tarefa.dart';
import 'package:note_app/util/notas.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = new TextEditingController();

  List listaTarefas = [
    ['Tarefas', false]
  ];

  void salvarNovaTarefa() {
    setState(() {
      if(controller.text == '') {}
      else {
        listaTarefas.add([controller.text, false]);
        controller.clear();
        Navigator.of(context).pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Text('Lista de Tarefas'),
      ),
      body: ListView.builder(
        itemCount: listaTarefas.length,
        itemBuilder: (context, index) {
          return Notas(
            taskName: listaTarefas[index][0],
            taskCompleted: listaTarefas[index][1],
            onChanged: (bool? valor) {
              setState(() {
                listaTarefas[index][1] = valor!;
              });
            },
          );
        },
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NovaTarefa(
                  onPressed: salvarNovaTarefa, controller: controller),
            ),
          );
        },
        child: Text('Adicionar'),
      ),
    );
  }
}
