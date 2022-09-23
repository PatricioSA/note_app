import 'package:flutter/material.dart';

class NovaTarefa extends StatelessWidget {
  TextEditingController controller;
  VoidCallback onPressed;

  NovaTarefa({required this.onPressed, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Adicionar Tarefa'
              ),
              keyboardType: TextInputType.text,
              controller: controller,
            ),
          ),

          //Botões
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: onPressed,
                child: Text('Adicionar'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancelar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
