import 'package:flutter/material.dart';
import 'package:tabletoprpg_app/models/habilidades.dart';
import 'package:tabletoprpg_app/widgets/habilidade_card.dart';

class HabilidadesPage extends StatefulWidget {
  final List<Habilidade> habilidades;

  const HabilidadesPage({super.key, required this.habilidades});

  @override
  State<HabilidadesPage> createState() => _HabilidadesPageState();
}

class _HabilidadesPageState extends State<HabilidadesPage> {
  String _filtro = 'Todas';

  @override
  Widget build(BuildContext context) {
    final habilidadesFiltradas = _filtro == 'Todas'
        ? widget.habilidades
        : widget.habilidades.where((h) => h.tipo == _filtro).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Habilidades'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              setState(() {
                _filtro = value;
              });
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'Todas',
                  child: Text('Todas'),
                ),
                const PopupMenuItem<String>(
                  value: 'Combate',
                  child: Text('Combate'),
                ),
                const PopupMenuItem<String>(
                  value: 'Magia',
                  child: Text('Magia'),
                ),
                const PopupMenuItem<String>(
                  value: 'Social',
                  child: Text('Social'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Filtro: $_filtro',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: habilidadesFiltradas.length,
              itemBuilder: (context, index) {
                return HabilidadeCard(
                  habilidade: habilidadesFiltradas[index],
                  onPressed: () {
                    _mostrarDetalhesHabilidade(
                      context,
                      habilidadesFiltradas[index],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _mostrarDetalhesHabilidade(BuildContext context, Habilidade habilidade) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(habilidade.nome),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tipo: ${habilidade.tipo}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(habilidade.descricao),
              if (habilidade.pericias)
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    'Esta habilidade é uma perícia',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.green,
                    ),
                  ),
                ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Fechar'),
            ),
          ],
        );
      },
    );
  }
}
