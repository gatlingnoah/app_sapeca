// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

const List<String> variedade = <String>[
  'Runner IAC 886',
  'Granoleico',
  'Georgia 06-G',
  'OL 3'
];
const List<String> operacoes = <String>['Arranquio', 'Recolhimento'];
const List<String> perdas = <String>['Visível', 'Invisível'];
const List<String> solo = <String>['Arenoso', 'Argiloso'];

class Calculo extends StatefulWidget {
  @override
  _CalculoState createState() => _CalculoState();
}

class _CalculoState extends State<Calculo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                children: [
                  const DropdownVariedade(),
                  const DropdownOperacoes(),
                  const DropdownPerdas(),
                  const DropdownSolo(),
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration:
                        InputDecoration(labelText: 'Perdas por hectare:'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Dropdown Variedade
class DropdownVariedade extends StatefulWidget {
  const DropdownVariedade({super.key});

  @override
  State<DropdownVariedade> createState() => _DropdownVariedadeState();
}

class _DropdownVariedadeState extends State<DropdownVariedade> {
  String variedadeValue = variedade.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: variedadeValue,
      elevation: 4,
      isExpanded: true,
      decoration: InputDecoration(labelText: 'Variedade'),
      onChanged: (String? value) {
        setState(() {
          variedadeValue = value!;
        });
      },
      items: variedade.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

// Dropdown Operações
class DropdownOperacoes extends StatefulWidget {
  const DropdownOperacoes({super.key});

  @override
  State<DropdownOperacoes> createState() => _DropdownOperacoesState();
}

class _DropdownOperacoesState extends State<DropdownOperacoes> {
  String operacoesValue = operacoes.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: operacoesValue,
      elevation: 4,
      isExpanded: true,
      decoration: InputDecoration(labelText: 'Operações'),
      onChanged: (String? value) {
        setState(() {
          operacoesValue = value!;
        });
      },
      items: operacoes.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

// Dropdown Perdas
class DropdownPerdas extends StatefulWidget {
  const DropdownPerdas({super.key});

  @override
  State<DropdownPerdas> createState() => _DropdownPerdasState();
}

class _DropdownPerdasState extends State<DropdownPerdas> {
  String perdasValue = perdas.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: perdasValue,
      elevation: 4,
      isExpanded: true,
      decoration: InputDecoration(labelText: 'Perdas'),
      onChanged: (String? value) {
        setState(() {
          perdasValue = value!;
        });
      },
      items: perdas.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

// Dropdown Solo
class DropdownSolo extends StatefulWidget {
  const DropdownSolo({super.key});

  @override
  State<DropdownSolo> createState() => _DropdownSoloState();
}

class _DropdownSoloState extends State<DropdownSolo> {
  String soloValue = solo.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: soloValue,
      elevation: 4,
      isExpanded: true,
      decoration: InputDecoration(labelText: 'Solo'),
      onChanged: (String? value) {
        setState(() {
          soloValue = value!;
        });
      },
      items: solo.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
