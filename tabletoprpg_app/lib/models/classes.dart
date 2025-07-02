class Classe {
  final String nome;
  final String descricao;
  final String dadoVida;
  final List<String> habilidadesPrincipais;
  final List<String> proficiencias;
  final List<String> talentosIniciais;
  final List<String> poderes;

  Classe({
    required this.nome,
    required this.descricao,
    required this.dadoVida,
    required this.habilidadesPrincipais,
    required this.proficiencias,
    required this.talentosIniciais,
    required this.poderes,
  });
}

class ListaClasses {
  static final List<Classe> todas = [
    Classe(
      nome: "Guerreiro",
      descricao: "Mestre do combate armado",
      dadoVida: "d10",
      habilidadesPrincipais: ["Luta", "Pontaria", "Fortitude"],
      proficiencias: ["Armas marciais", "Armaduras pesadas"],
      talentosIniciais: ["Ataque Poderoso", "Especialização em Arma"],
      poderes: ["Durão", "Ataque Extra", "Mestre de Armas"],
    ),
    Classe(
      nome: "Ladino",
      descricao: "Especialista em furtividade e ataques precisos",
      dadoVida: "d8",
      habilidadesPrincipais: ["Furtividade", "Ladinagem", "Acrobacia"],
      proficiencias: ["Armas leves", "Armaduras leves"],
      talentosIniciais: ["Ataque Furtivo", "Esquiva"],
      poderes: ["Mente Criminosa", "Golpe de Sorte", "Mestre do Disfarce"],
    ),
    Classe(
      nome: "Bárbaro",
      descricao: "Guerreiro feroz movido pela fúria",
      dadoVida: "d12",
      habilidadesPrincipais: ["Intimidação", "Sobrevivência", "Atletismo"],
      proficiencias: ["Armas marciais", "Armaduras médias"],
      talentosIniciais: ["Fúria", "Redução de Dano"],
      poderes: ["Grito de Guerra", "Fúria Incontrolável", "Pele de Pedra"],
    ),
    Classe(
      nome: "Bardo",
      descricao: "Artista mágico que inspira aliados",
      dadoVida: "d8",
      habilidadesPrincipais: ["Diplomacia", "Atuação", "Enganação"],
      proficiencias: ["Armas simples", "Armaduras leves"],
      talentosIniciais: ["Inspiração", "Canção Mágica"],
      poderes: ["Palavras de Poder", "Encantar", "Performance Épica"],
    ),
    Classe(
      nome: "Clérigo",
      descricao: "Servo divino com poderes milagrosos",
      dadoVida: "d8",
      habilidadesPrincipais: ["Religião", "Cura", "Vontade"],
      proficiencias: ["Armas simples", "Armaduras médias"],
      talentosIniciais: ["Magias Divinas", "Domínio Divino"],
      poderes: ["Canalizar Energia", "Milagre", "Intercessão Divina"],
    ),
    Classe(
      nome: "Druida",
      descricao: "Guardião da natureza com formas animais",
      dadoVida: "d8",
      habilidadesPrincipais: ["Sobrevivência", "Natureza", "Percepção"],
      proficiencias: ["Armas simples", "Armaduras leves"],
      talentosIniciais: ["Forma Selvagem", "Companheiro Animal"],
      poderes: [
        "Magias da Natureza",
        "Mestre das Formas",
        "Chamado da Floresta",
      ],
    ),
    Classe(
      nome: "Paladino",
      descricao: "Cavaleiro sagrado com juramento divino",
      dadoVida: "d10",
      habilidadesPrincipais: ["Religião", "Diplomacia", "Vontade"],
      proficiencias: ["Armas marciais", "Armaduras pesadas"],
      talentosIniciais: ["Juramento", "Aura Sagrada"],
      poderes: ["Golpe Divino", "Cura pela Fé", "Inimigo do Mal"],
    ),
    Classe(
      nome: "Arcanista",
      descricao: "Estudioso das artes arcanas",
      dadoVida: "d6",
      habilidadesPrincipais: ["Misticismo", "Conhecimento", "Investigação"],
      proficiencias: ["Armas simples", "Nenhuma armadura"],
      talentosIniciais: ["Magias Arcanas", "Especialização em Escola"],
      poderes: ["Magia Ilimitada", "Contramagia", "Mestre Feiticeiro"],
    ),
    Classe(
      nome: "Caçador",
      descricao: "Especialista em rastrear e abater presas",
      dadoVida: "d10",
      habilidadesPrincipais: ["Sobrevivência", "Percepção", "Pontaria"],
      proficiencias: ["Armas marciais", "Armaduras médias"],
      talentosIniciais: ["Inimigo Favorecido", "Rastrear"],
      poderes: ["Tiro Certeiro", "Emboscada", "Mestre do Ambiente"],
    ),
    Classe(
      nome: "Inventor",
      descricao: "Criador de dispositivos engenhosos",
      dadoVida: "d8",
      habilidadesPrincipais: ["Ofício", "Conhecimento", "Investigação"],
      proficiencias: ["Armas simples", "Armaduras leves"],
      talentosIniciais: ["Engenhoca", "Fabricar Item"],
      poderes: ["Mente Brilhante", "Invenção Superior", "Gênio da Engenhoca"],
    ),
  ];
}
