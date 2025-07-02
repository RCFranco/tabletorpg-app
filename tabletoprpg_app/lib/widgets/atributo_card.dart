import 'package:flutter/material.dart';

class AtributoCard extends StatelessWidget {
  final String nome;
  final int valor;
  final int modificador;

  const AtributoCard({
    super.key,
    required this.nome,
    required this.valor,
    required this.modificador,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              nome,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Valor: $valor', style: const TextStyle(fontSize: 18)),
            Text(
              'Modificador: ${modificador >= 0 ? '+$modificador' : modificador}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
