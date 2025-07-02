import 'package:flutter/material.dart';
import 'package:tabletoprpg_app/models/personagem.dart';

class HeaderWidget extends StatelessWidget {
  final Personagem personagem;

  const HeaderWidget({super.key, required this.personagem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(personagem.imagem),
            ),
            const SizedBox(height: 16),
            Text(
              personagem.nome,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              '${personagem.raca} ${personagem.classe} Nível ${personagem.nivel}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Divindade: ${personagem.divindade} | Origem: ${personagem.origem}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatusChip('PV: ${personagem.pontosDeVida}', Colors.red),
                _buildStatusChip('PM: ${personagem.pontosDeMana}', Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusChip(String label, Color color) {
    return Chip(
      label: Text(label),
      backgroundColor: color.withOpacity(0.2),
      labelStyle: TextStyle(color: color),
      shape: StadiumBorder(side: BorderSide(color: color)),
    );
  }
}
