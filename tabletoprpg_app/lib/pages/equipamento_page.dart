import 'package:flutter/material.dart';

class Equipamento {
  final String nome;
  final String tipo;
  final String descricao;
  final int quantidade;
  final double peso;

  Equipamento({
    required this.nome,
    required this.tipo,
    required this.descricao,
    this.quantidade = 1,
    required this.peso,
  });
}

final equipamentosMock = [
  Equipamento(
    nome: 'Espada Longa',
    tipo: 'Arma',
    descricao: '1d8 de dano, corte',
    quantidade: 1,
    peso: 1.5,
  ),
  Equipamento(
    nome: 'Armadura de Couro',
    tipo: 'Armadura',
    descricao: '+2 de Defesa',
    quantidade: 1,
    peso: 5.0,
  ),
  Equipamento(
    nome: 'Poção de Cura',
    tipo: 'Consumível',
    descricao: 'Recupera 2d6+2 PV',
    quantidade: 3,
    peso: 0.1,
  ),
];

class EquipamentoPage extends StatefulWidget {
  const EquipamentoPage({super.key});

  @override
  State<EquipamentoPage> createState() => _EquipamentoPageState();
}

class _EquipamentoPageState extends State<EquipamentoPage> {
  final List<Equipamento> _equipamentos = equipamentosMock;
  double _pesoTotal = 0;

  @override
  void initState() {
    super.initState();
    _calcularPesoTotal();
  }

  void _calcularPesoTotal() {
    _pesoTotal = _equipamentos.fold(
      0,
      (total, item) => total + (item.peso * item.quantidade),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Equipamento')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Peso Total:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$_pesoTotal kg',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _equipamentos.length,
              itemBuilder: (context, index) {
                final item = _equipamentos[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 16,
                  ),
                  child: ListTile(
                    leading: _getIconByType(item.tipo),
                    title: Text(item.nome),
                    subtitle: Text('${item.tipo} - ${item.peso} kg cada'),
                    trailing: Text('x${item.quantidade}'),
                    onTap: () {
                      _mostrarDetalhesEquipamento(context, item);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _adicionarNovoEquipamento,
        child: const Icon(Icons.add),
      ),
    );
  }

  Icon _getIconByType(String tipo) {
    switch (tipo) {
      case 'Arma':
        return const Icon(Icons.sports_martial_arts, color: Colors.red);
      case 'Armadura':
        return const Icon(Icons.security, color: Colors.blue);
      case 'Consumível':
        return const Icon(Icons.backpack, color: Colors.green);
      default:
        return const Icon(Icons.backpack, color: Colors.grey);
    }
  }

  void _mostrarDetalhesEquipamento(
    BuildContext context,
    Equipamento equipamento,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(equipamento.nome),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tipo: ${equipamento.tipo}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Quantidade: ${equipamento.quantidade}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Peso: ${equipamento.peso} kg (total: ${equipamento.peso * equipamento.quantidade} kg)',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(equipamento.descricao),
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

  void _adicionarNovoEquipamento() {
    // Implementação para adicionar novo equipamento
    // Pode ser um formulário em outro diálogo ou página
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Funcionalidade de adicionar equipamento')),
    );
  }
}
