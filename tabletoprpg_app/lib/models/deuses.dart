class Deus {
  final String nome;
  final String titulo;
  final List<String> dominios;
  final String simbolo;
  final String descricao;
  final List<String> obrigacoes;
  final List<String> poderesConcedidos;

  Deus({
    required this.nome,
    required this.titulo,
    required this.dominios,
    required this.simbolo,
    required this.descricao,
    required this.obrigacoes,
    required this.poderesConcedidos,
  });
}

class ListaDeuses {
  static final List<Deus> todos = [
    Deus(
      nome: "Aharadak",
      titulo: "O Senhor do Desespero",
      dominios: ["Morte", "Destruição", "Caos"],
      simbolo: "Mão negra com garras",
      descricao: "Deus da destruição e do fim de todas as coisas",
      obrigacoes: [
        "Promover o caos e a destruição",
        "Enfraquecer as instituições sociais",
      ],
      poderesConcedidos: [
        "Toque da Morte",
        "Aura de Desespero",
        "Invocar Profundezas",
      ],
    ),
    Deus(
      nome: "Allihanna",
      titulo: "A Mãe Natureza",
      dominios: ["Natureza", "Cura", "Clima"],
      simbolo: "Árvore estilizada",
      descricao: "Deusa da natureza e das estações",
      obrigacoes: [
        "Proteger a natureza",
        "Combater a expansão urbana descontrolada",
      ],
      poderesConcedidos: [
        "Comunhão com a Natureza",
        "Cura Natural",
        "Controlar Plantas",
      ],
    ),
    Deus(
      nome: "Arsenal",
      titulo: "O Ferreiro Divino",
      dominios: ["Guerra", "Tecnologia", "Proteção"],
      simbolo: "Martelo e bigorna cruzados",
      descricao: "Deus da tecnologia, invenção e guerra estratégica",
      obrigacoes: [
        "Inovar e criar novas tecnologias",
        "Manter equipamentos em perfeito estado",
      ],
      poderesConcedidos: [
        "Arma Imbuída",
        "Conhecimento Tecnológico",
        "Pele de Aço",
      ],
    ),
    Deus(
      nome: "Azgher",
      titulo: "O Sol Vingativo",
      dominios: ["Sol", "Justiça", "Verdade"],
      simbolo: "Sol com olho no centro",
      descricao: "Deus do sol e da justiça implacável",
      obrigacoes: [
        "Combater a escuridão e os não-mortos",
        "Promover a verdade e justiça",
      ],
      poderesConcedidos: ["Luz Solar", "Justiça do Sol", "Raio Solar"],
    ),
    Deus(
      nome: "Hyninn",
      titulo: "O Trapaceiro",
      dominios: ["Trapaça", "Ilusão", "Sorte"],
      simbolo: "Dado de seis lados",
      descricao: "Deus das travessuras e coincidências suspeitas",
      obrigacoes: [
        "Pregar peças e desafiar autoridades",
        "Seguir os caprichos do destino",
      ],
      poderesConcedidos: [
        "Sorte do Louco",
        "Disfarce Perfeito",
        "Ilusão Mágica",
      ],
    ),
    Deus(
      nome: "Kallyadranoch",
      titulo: "O Dragão de Gelo",
      dominios: ["Inverno", "Tirania", "Dragões"],
      simbolo: "Dragão branco sobre montanha",
      descricao: "Deus-dragão do inverno e da dominação",
      obrigacoes: ["Estabelecer hierarquias de poder", "Subjugar os fracos"],
      poderesConcedidos: [
        "Sopro do Inverno",
        "Presença Aterrorizante",
        "Pele de Gelo",
      ],
    ),
    Deus(
      nome: "Khalmyr",
      titulo: "O Justiceiro",
      dominios: ["Justiça", "Honra", "Coragem"],
      simbolo: "Espada flamejante",
      descricao: "Deus da justiça e da lei benevolente",
      obrigacoes: ["Proteger os inocentes", "Manter votos e juramentos"],
      poderesConcedidos: [
        "Lâmina da Justiça",
        "Detectar Mentiras",
        "Aura de Coragem",
      ],
    ),
    Deus(
      nome: "Lena",
      titulo: "A Luz da Vida",
      dominios: ["Vida", "Cura", "Compaixão"],
      simbolo: "Mão irradiando luz",
      descricao: "Deusa da cura e da misericórdia",
      obrigacoes: ["Aliviar o sofrimento", "Recusar-se a matar"],
      poderesConcedidos: [
        "Cura Milagrosa",
        "Proteção Contra Mortos-Vivos",
        "Aura de Paz",
      ],
    ),
    Deus(
      nome: "Lin-Wu",
      titulo: "O Tigre Imperial",
      dominios: ["Força", "Disciplina", "Estratégia"],
      simbolo: "Tigre estilizado",
      descricao: "Deus da disciplina marcial e estratégia de combate",
      obrigacoes: [
        "Manter rigoroso treinamento físico",
        "Seguir códigos de honra marcial",
      ],
      poderesConcedidos: [
        "Golpe Perfeito",
        "Mente Estratégica",
        "Corpo de Aço",
      ],
    ),
    Deus(
      nome: "Marah",
      titulo: "A Mãe das Dores",
      dominios: ["Dor", "Sacrifício", "Redenção"],
      simbolo: "Coração com espinhos",
      descricao: "Deusa que carrega as dores do mundo",
      obrigacoes: [
        "Assumir a dor dos outros",
        "Buscar redenção para os pecadores",
      ],
      poderesConcedidos: ["Absorver Dor", "Redenção", "Proteção do Sofrimento"],
    ),
    Deus(
      nome: "Megalokk",
      titulo: "O Senhor das Feras",
      dominios: ["Animais", "Força Bruta", "Caça"],
      simbolo: "Presa de animal",
      descricao: "Deus dos animais selvagens e da lei do mais forte",
      obrigacoes: ["Respeitar a hierarquia natural", "Caçar para sobreviver"],
      poderesConcedidos: [
        "Forma Selvagem",
        "Fúria da Fera",
        "Comando de Animais",
      ],
    ),
    Deus(
      nome: "Nimb",
      titulo: "O Andarilho",
      dominios: ["Viagem", "Liberdade", "Aventura"],
      simbolo: "Pegadas que se transformam em pássaros",
      descricao: "Deus das estradas e da liberdade",
      obrigacoes: [
        "Nunca ficar muito tempo no mesmo lugar",
        "Proteger viajantes",
      ],
      poderesConcedidos: [
        "Caminho do Andarilho",
        "Sentido de Direção",
        "Passo Veloz",
      ],
    ),
    Deus(
      nome: "Oceano",
      titulo: "O Senhor das Profundezas",
      dominios: ["Oceano", "Mistério", "Transformação"],
      simbolo: "Redemoinho",
      descricao: "Deus dos mares e das profundezas desconhecidas",
      obrigacoes: [
        "Explorar os mistérios do oceano",
        "Manter o equilíbrio das marés",
      ],
      poderesConcedidos: [
        "Respirar na Água",
        "Controlar Água",
        "Forma Aquática",
      ],
    ),
    Deus(
      nome: "Sszzaas",
      titulo: "O Pai das Serpentes",
      dominios: ["Enganação", "Veneno", "Traição"],
      simbolo: "Serpente engolindo a própria cauda",
      descricao: "Deus das serpentes e da traição calculista",
      obrigacoes: [
        "Sempre ter um plano de fuga",
        "Nunca confiar totalmente em ninguém",
      ],
      poderesConcedidos: ["Visão Térmica", "Pele de Cobra", "Veneno Divino"],
    ),
    Deus(
      nome: "Tanna-Toh",
      titulo: "A Guardiã do Conhecimento",
      dominios: ["Conhecimento", "Linguagem", "Sabedoria"],
      simbolo: "Livro aberto com olho",
      descricao: "Deusa do conhecimento e da escrita",
      obrigacoes: [
        "Preservar e compartilhar conhecimento",
        "Manter registros precisos",
      ],
      poderesConcedidos: [
        "Compreender Linguagens",
        "Memória Perfeita",
        "Palavra de Poder",
      ],
    ),
    Deus(
      nome: "Tenebra",
      titulo: "A Senhora da Noite",
      dominios: ["Escuridão", "Segredos", "Morte"],
      simbolo: "Lua negra",
      descricao: "Deusa da noite e dos segredos ocultos",
      obrigacoes: ["Guardar segredos", "Proteger a escuridão"],
      poderesConcedidos: [
        "Visão na Escuridão",
        "Manto de Sombras",
        "Toque da Morte",
      ],
    ),
    Deus(
      nome: "Thwor",
      titulo: "O Martelo da Batalha",
      dominios: ["Guerra", "Fúria", "Destruição"],
      simbolo: "Martelo ensanguentado",
      descricao: "Deus da guerra sem regras e da fúria em batalha",
      obrigacoes: [
        "Buscar desafios de combate",
        "Rejeitar táticas muito planejadas",
      ],
      poderesConcedidos: [
        "Fúria de Thwor",
        "Resistência Inabalável",
        "Golpe Demolidor",
      ],
    ),
    Deus(
      nome: "Thyatis",
      titulo: "O Trovão Andante",
      dominios: ["Tempestade", "Liberdade", "Revolução"],
      simbolo: "Nuvem de tempestade com raio",
      descricao: "Deus das tempestades e das revoluções",
      obrigacoes: ["Combater tiranos", "Seguir os impulsos do coração"],
      poderesConcedidos: [
        "Controlar Tempestades",
        "Grito do Trovão",
        "Velocidade do Relâmpago",
      ],
    ),
    Deus(
      nome: "Valkaria",
      titulo: "A Rainha Vampira",
      dominios: ["Sangue", "Beleza", "Morte"],
      simbolo: "Boca com presas sobre taça",
      descricao: "Deusa vampiresca da beleza mortal",
      obrigacoes: ["Cultivar a beleza e arte", "Alimentar-se dos outros"],
      poderesConcedidos: ["Beleza Sobrenatural", "Sede de Sangue", "Dominação"],
    ),
    Deus(
      nome: "Wynna",
      titulo: "A Feiticeira",
      dominios: ["Magia", "Sabedoria", "Ilusão"],
      simbolo: "Estrela de cinco pontas",
      descricao: "Deusa da magia e do conhecimento arcano",
      obrigacoes: ["Estudar e desenvolver magia", "Proteger lugares de poder"],
      poderesConcedidos: [
        "Magia Ilimitada",
        "Resistência Mágica",
        "Visão Arcana",
      ],
    ),
  ];
}
