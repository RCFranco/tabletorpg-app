enum TipoPoder {
  classe,
  geral,
  divindade,
  tormenta,
  raca,
  destino,
  origem,
  magia,
}

class Poder {
  final String nome;
  final TipoPoder tipo;
  final String descricao;
  final String? requisito;

  Poder({
    required this.nome,
    required this.tipo,
    required this.descricao,
    this.requisito,
  });
}
