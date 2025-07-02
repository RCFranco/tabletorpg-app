import 'package:flutter/material.dart';
import 'package:tabletoprpg_app/models/habilidades.dart';

class HabilidadeCard extends StatelessWidget {
  final Habilidade habilidade;
  final VoidCallback? onPressed;

  const HabilidadeCard({super.key, required this.habilidade, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    habilidade.nome,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Chip(
                    label: Text(habilidade.tipo),
                    backgroundColor: _getColorByType(habilidade.tipo),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(habilidade.descricao, style: const TextStyle(fontSize: 16)),
              if (habilidade.pericias)
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Icon(Icons.check, size: 16, color: Colors.green),
                      SizedBox(width: 4),
                      Text('Perícia', style: TextStyle(color: Colors.green)),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getColorByType(String tipo) {
    switch (tipo.toLowerCase()) {
      case 'combate':
        return Colors.red.withOpacity(0.2);
      case 'magia':
        return Colors.purple.withOpacity(0.2);
      case 'social':
        return Colors.blue.withOpacity(0.2);
      default:
        return Colors.grey.withOpacity(0.2);
    }
  }
}
