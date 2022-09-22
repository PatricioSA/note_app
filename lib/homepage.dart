import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = new TextEditingController();

  List tarefas = ['Teste1', 'Teste2'];

  void criarTarefa() {
    setState(() {
      Padding(
        padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
        child: Container(
          color: Colors.blue,
          child: CheckboxListTile(
            title: Text(tarefas[0]),
            value: false,
            onChanged: ((value) {}),
          ),
        ),
      );
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              controller: _controller,
            ),
            ElevatedButton(
              onPressed: criarTarefa,
              child: Text('Adicionar'),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
            //   child: Container(
            //     color: Colors.blue,
            //     child: CheckboxListTile(
            //       title: Text(tarefas[0]),
            //       value: false,
            //       onChanged: ((value) {}),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
