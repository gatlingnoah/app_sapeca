// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

String stringAutores = 'Prof. Dr. Rouverson Pereira da Silva \n'
    'Prof. Dr. Adão Felipe dos Santos \n'
    'M. Sc. Bruno Rafael de Almeida Moreira \n'
    'Gustavo Brasca Bachega \n'
    'E-mail: rouverson@unesp.br \n'
    'Celular: (16) 99993-4575 \n';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(padding: EdgeInsets.all(8)),
        Center(
          child: const Text.rich(
            TextSpan(
              text: 'Sistema de Avaliação de Perdas na Colheita de Amendoim – ',
              style: TextStyle(fontSize: 16), // default text style
              children: <TextSpan>[
                TextSpan(
                    text: 'SAPECA',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        // Lista dos Autores
        ListTile(
          title: Text(
            'Autores',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            stringAutores,
            style: TextStyle(fontSize: 16),
          ),
          contentPadding: EdgeInsets.all(8),
        ),
        // Lista dos Autores
        ListTile(
          title: Text(
            'Desenvolvedor',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Lucas Natan Camacho',
            style: TextStyle(fontSize: 16),
          ),
          contentPadding: EdgeInsets.all(16),
        )
      ],
    ));
  }
}
