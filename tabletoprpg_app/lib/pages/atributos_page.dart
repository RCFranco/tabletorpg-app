import 'package:flutter/material.dart';
import 'package:tabletoprpg_app/models/atributos.dart';
import 'package:tabletoprpg_app/widgets/atributo_card.dart';

class AtributosPage extends StatelessWidget {
  final Atributos atributos;

  const AtributosPage({Key? key, required this.atributos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Atributos')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          AtributoCard(
            nome: 'Força',
            valor: atributos.forca,
            modificador: atributos.getModificador(atributos.forca),
          ),
          AtributoCard(
            nome: 'Destreza',
            valor: atributos.destreza,
            modificador: atributos.getModificador(atributos.destreza),
          ),
          // Adicione os outros atributos da mesma forma
        ],
      ),
    );
  }
}
