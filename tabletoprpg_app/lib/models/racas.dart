class Raca {
  final String nome;
  final String descricao;
  final List<String> atributosBonus;
  final List<String> habilidadesRaciais;
  final List<String> talentosRaciais;
  final int deslocamento;
  final List<String> idiomas;

  Raca({
    required this.nome,
    required this.descricao,
    required this.atributosBonus,
    required this.habilidadesRaciais,
    required this.talentosRaciais,
    required this.deslocamento,
    required this.idiomas,
  });
}

class ListaRacas {
  static final List<Raca> todas = [
    Raca(
      nome: "Humano",
      descricao: "Adaptáveis e versáteis",
      atributosBonus: ["+1 em qualquer atributo"],
      habilidadesRaciais: ["Versatilidade"],
      talentosRaciais: ["Um talento adicional no 1º nível"],
      deslocamento: 9,
      idiomas: ["Comum", "Mais um adicional"],
    ),
    Raca(
      nome: "Elfo",
      descricao: "Graciosos e místicos",
      atributosBonus: ["+2 Destreza", "+2 Inteligência", "-2 Constituição"],
      habilidadesRaciais: ["Visão na Penumbra", "Sangue Mágico"],
      talentosRaciais: ["Pontaria Élfica"],
      deslocamento: 9,
      idiomas: ["Comum", "Élfico"],
    ),
    Raca(
      nome: "Anão",
      descricao: "Resistentes e tradicionais",
      atributosBonus: ["+2 Constituição", "+2 Sabedoria", "-2 Destreza"],
      habilidadesRaciais: ["Visão no Escuro", "Resistência Étnica"],
      talentosRaciais: ["Especialização em Machado ou Martelo"],
      deslocamento: 6,
      idiomas: ["Comum", "Anão"],
    ),
    Raca(
      nome: "Qareen",
      descricao: "Exóticos e carismáticos",
      atributosBonus: ["+2 Carisma", "+2 Inteligência", "-2 Sabedoria"],
      habilidadesRaciais: ["Resistência Elemental", "Desejo"],
      talentosRaciais: ["Dom Natural"],
      deslocamento: 9,
      idiomas: ["Comum", "Qareen"],
    ),
    Raca(
      nome: "Goblin",
      descricao: "Pequenos e trapaceiros",
      atributosBonus: ["+2 Destreza", "+2 Carisma", "-2 Força"],
      habilidadesRaciais: ["Visão no Escuro", "Espelunqueiro"],
      talentosRaciais: ["Trapaceiro Nato"],
      deslocamento: 6,
      idiomas: ["Comum", "Goblin"],
    ),
    Raca(
      nome: "Minotauro",
      descricao: "Poderosos e ferozes",
      atributosBonus: [
        "+4 Força",
        "+2 Constituição",
        "-2 Inteligência",
        "-2 Carisma",
      ],
      habilidadesRaciais: ["Visão no Escuro", "Chifres"],
      talentosRaciais: ["Investida Poderosa"],
      deslocamento: 9,
      idiomas: ["Comum", "Minotauro"],
    ),
    Raca(
      nome: "Lefou",
      descricao: "Mutantes das trevas",
      atributosBonus: [
        "+2 em dois atributos à escolha",
        "-2 em um atributo à escolha",
      ],
      habilidadesRaciais: ["Mutação", "Resistência a Energia"],
      talentosRaciais: ["Dedo Verde"],
      deslocamento: 9,
      idiomas: ["Comum", "Abissal"],
    ),
    Raca(
      nome: "Osteon",
      descricao: "Mortos-vivos conscientes",
      atributosBonus: ["+2 Constituição", "+2 Sabedoria", "-2 Carisma"],
      habilidadesRaciais: ["Imunidade a Sangue", "Vazio da Alma"],
      talentosRaciais: ["Toque da Morte"],
      deslocamento: 9,
      idiomas: ["Comum", "Morto-Vivo"],
    ),
    Raca(
      nome: "Sílfide",
      descricao: "Pequenos seres alados",
      atributosBonus: ["+2 Destreza", "+2 Carisma", "-2 Força"],
      habilidadesRaciais: ["Voo", "Tamanho Minúsculo"],
      talentosRaciais: ["Magia das Fadas"],
      deslocamento: 3,
      idiomas: ["Comum", "Sylvestre"],
    ),
    Raca(
      nome: "Trog",
      descricao: "Humanoides reptilianos",
      atributosBonus: ["+2 Força", "+2 Constituição", "-2 Inteligência"],
      habilidadesRaciais: ["Visão no Escuro", "Mordida"],
      talentosRaciais: ["Pele Escamosa"],
      deslocamento: 9,
      idiomas: ["Comum", "Trog"],
    ),
  ];
}
