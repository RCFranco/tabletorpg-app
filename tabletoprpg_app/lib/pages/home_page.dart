import 'package:flutter/material.dart';
import 'package:tabletoprpg_app/models/mock_data.dart';
import 'package:tabletoprpg_app/models/personagem.dart';
import 'package:tabletoprpg_app/pages/atributos_page.dart';
import 'package:tabletoprpg_app/pages/habilidades_page.dart';
import 'package:tabletoprpg_app/widgets/header_widget.dart';

class HomePage extends StatelessWidget {
  final Personagem personagem;

  const HomePage({super.key, required this.personagem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ficha de Tormenta20')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(personagem: personagem),
            const SizedBox(height: 20),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: [
                _buildMenuCard(
                  context,
                  'Atributos',
                  Icons.fitness_center,
                  Colors.blue,
                ),
                _buildMenuCard(
                  context,
                  'Habilidades',
                  Icons.star,
                  Colors.green,
                ),
                _buildMenuCard(
                  context,
                  'Equipamento',
                  Icons.work,
                  Colors.orange,
                ),
                _buildMenuCard(
                  context,
                  'Magias',
                  Icons.auto_awesome,
                  Colors.purple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
  ) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          // Navegar para a página correspondente
          switch (title) {
            case 'Atributos':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AtributosPage(atributos: atributosMock),
                ),
              );
              break;
            case 'Habilidades':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      HabilidadesPage(habilidades: habilidadesMock),
                ),
              );
              break;
            // Adicione outros casos conforme necessário
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: color),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
