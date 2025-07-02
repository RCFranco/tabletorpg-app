class Habilidade {
  final String nome;
  final String descricao;
  final bool pericias;
  final String tipo;

  Habilidade({
    required this.nome,
    required this.descricao,
    this.pericias = false,
    required this.tipo,
  });
}
