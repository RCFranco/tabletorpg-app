import 'package:tabletoprpg_app/models/equipamentos.dart';

import 'moedas.dart';
import 'poderes.dart';

class Personagem {
  final String nome;
  final String raca;
  final String classe;
  final int nivel;
  final String divindade;
  final String origem;
  final int pontosDeVida;
  final int pontosDeMana;
  final String imagem;
  final int defesa;
  final List<String> inventario;
  final List<Equipamento> equipamento;
  final Set<Poder> poderes;
  final Moedas moedas;

  Personagem({
    required this.nome,
    required this.raca,
    required this.classe,
    required this.nivel,
    required this.divindade,
    required this.origem,
    required this.pontosDeVida,
    required this.pontosDeMana,
    required this.imagem,
    required this.defesa,
    required this.inventario,
    required this.equipamento,
    required this.poderes,
    required this.moedas,
  });

  // Método para adicionar um novo poder
  void adicionarPoder(Poder novoPoder) {
    poderes.add(novoPoder);
  }

  // Método para remover um poder
  void removerPoder(String nomePoder) {
    poderes.removeWhere((poder) => poder.nome == nomePoder);
  }

  // Método para adicionar item ao inventário
  void adicionarItem(String item) {
    inventario.add(item);
  }

  // Método para remover item do inventário
  void removerItem(String item) {
    inventario.remove(item);
  }
}
