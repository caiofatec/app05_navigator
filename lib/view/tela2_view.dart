// Tela 2
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tela2View extends StatefulWidget {
  const Tela2View({super.key});

  @override
  State<Tela2View> createState() => _Tela2ViewState();
}

class _Tela2ViewState extends State<Tela2View> {
  //
  // Recuperar a informação recebida da Tela 1
  //

  @override
  Widget build(BuildContext context) {
    final String nome = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 2: $nome'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('voltar'),
            ),
            OutlinedButton(
              onPressed: () => Navigator.pushNamed(context, 't3'),
              child: Text('abrir'),
            ),
          ],
        ),
      ),
    );
  }
}
