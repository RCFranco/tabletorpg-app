enum TipoAcoes { padrao, movimento, completa, livre, reAcoes, foraCombate }

class Acoes {
  final String nome;
  final String descricao;
  final TipoAcoes tipo;
  final List<String>? requisitos;
  final String? beneficio;
  final String? observacoes;

  Acoes({
    required this.nome,
    required this.descricao,
    required this.tipo,
    this.requisitos,
    this.beneficio,
    this.observacoes,
  });
}

class AcoesCombate {
  static final List<Acoes> padrao = [
    Acoes(
      nome: "Atacar à Distância",
      descricao: "Realizar um ataque com arma à distância",
      tipo: TipoAcoes.padrao,
      observacoes: "Sofre penalidade por alcance",
    ),
    Acoes(
      nome: "Manobra de Combate",
      descricao: "Substituir um ataque corpo a corpo por uma manobra especial",
      tipo: TipoAcoes.padrao,
      requisitos: ["Ataque corpo a corpo"],
    ),
    Acoes(
      nome: "Preparar",
      descricao:
          "Preparar uma ação para ser executada em resposta a um gatilho",
      tipo: TipoAcoes.padrao,
      observacoes: "Pode ser usada como reação",
    ),
    Acoes(
      nome: "Agarrar",
      descricao: "Tentar segurar uma criatura",
      tipo: TipoAcoes.padrao,
      requisitos: ["Mão livre"],
    ),
    Acoes(
      nome: "Derrubar",
      descricao: "Tentar derrubar uma criatura no chão",
      tipo: TipoAcoes.padrao,
    ),
    Acoes(
      nome: "Atropelar",
      descricao: "Forçar passagem por espaço ocupado",
      tipo: TipoAcoes.padrao,
    ),
    Acoes(
      nome: "Usar Habilidade",
      descricao: "Executar uma habilidade que requer ação padrão",
      tipo: TipoAcoes.padrao,
    ),
    Acoes(
      nome: "Desarmar",
      descricao: "Tentar fazer o oponente soltar um item",
      tipo: TipoAcoes.padrao,
    ),
    Acoes(
      nome: "Fintar",
      descricao: "Confundir uma criatura para ganhar vantagem",
      tipo: TipoAcoes.padrao,
    ),
    Acoes(
      nome: "Usar Item Mágico",
      descricao: "Ativar um item mágico que requer ação padrão",
      tipo: TipoAcoes.padrao,
    ),
    Acoes(
      nome: "Empurrar",
      descricao: "Tentar empurrar uma criatura",
      tipo: TipoAcoes.padrao,
    ),
    Acoes(
      nome: "Quicar",
      descricao: "Tentar pegar um objeto no ar",
      tipo: TipoAcoes.padrao,
    ),
  ];

  static final List<Acoes> movimento = [
    Acoes(
      nome: "Levantar-se",
      descricao: "Levantar do chão ou de uma posição caída",
      tipo: TipoAcoes.movimento,
    ),
    Acoes(
      nome: "Vestir ou Desvestir",
      descricao: "Equipar ou remover um item de armadura ou escudo",
      tipo: TipoAcoes.movimento,
    ),
    Acoes(
      nome: "Manipular Item",
      descricao: "Pegar, abrir, entregar ou interagir com um objeto",
      tipo: TipoAcoes.movimento,
    ),
    Acoes(
      nome: "Mirar",
      descricao: "Preparar-se para um ataque à distância mais preciso",
      tipo: TipoAcoes.movimento,
      beneficio: "+2 no próximo ataque à distância",
    ),
    Acoes(
      nome: "Movimentar-se",
      descricao: "Andar, correr, voar ou escalar",
      tipo: TipoAcoes.movimento,
    ),
    Acoes(
      nome: "Sacar ou Guardar Item",
      descricao: "Pegar ou guardar um item nas mãos ou mochila",
      tipo: TipoAcoes.movimento,
    ),
  ];

  static final List<Acoes> completa = [
    Acoes(
      nome: "Correr",
      descricao: "Mover-se em velocidade máxima",
      tipo: TipoAcoes.completa,
      observacoes: "Teste de Atletismo pode ser necessário",
    ),
    Acoes(
      nome: "Concentração em Magia",
      descricao: "Manter concentração em uma magia ativa",
      tipo: TipoAcoes.completa,
      requisitos: ["Magia em efeito"],
    ),
    Acoes(
      nome: "Investida",
      descricao: "Mover-se e atacar em uma única ação",
      tipo: TipoAcoes.completa,
      beneficio: "+2 no ataque, -2 na defesa até próximo turno",
    ),
    Acoes(
      nome: "Lançar Magia",
      descricao: "Conjurar uma magia que requer ação completa",
      tipo: TipoAcoes.completa,
    ),
  ];

  static final List<Acoes> livre = [
    Acoes(
      nome: "Atrasar",
      descricao: "Adiar a execução de uma ação para mais tarde no turno",
      tipo: TipoAcoes.livre,
    ),
    Acoes(
      nome: "Falar",
      descricao: "Dizer algumas palavras ou frases curtas",
      tipo: TipoAcoes.livre,
    ),
    Acoes(
      nome: "Jogar-se no Chão",
      descricao: "Deitar-se rapidamente para evitar ataques",
      tipo: TipoAcoes.livre,
      beneficio: "+2 na Defesa contra ataques à distância",
    ),
    Acoes(
      nome: "Largar Item",
      descricao: "Soltar um item que está segurando",
      tipo: TipoAcoes.livre,
    ),
  ];
}
