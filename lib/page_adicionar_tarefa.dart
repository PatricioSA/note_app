import 'package:flutter/material.dart';

class NovaTarefa extends StatelessWidget {
  TextEditingController controller;
  VoidCallback onPressed;

  NovaTarefa({required this.onPressed, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Adicionar Tarefa'
              ),
              keyboardType: TextInputType.text,
              controller: controller,
            ),
          ),
          
          const SizedBox(height: 20,),
          
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
