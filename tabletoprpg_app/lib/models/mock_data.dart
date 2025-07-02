import 'package:tabletoprpg_app/models/personagem.dart';
import 'package:tabletoprpg_app/models/atributos.dart';
import 'package:tabletoprpg_app/models/habilidades.dart';
import 'package:tabletoprpg_app/pages/equipamento_page.dart';

final personagemMock = Personagem(
  nome: "Aric Windstone",
  raca: "Elfo",
  classe: "Arqueiro",
  nivel: 5,
  divindade: "Allihanna",
  origem: "Caçador",
  pontosDeVida: 42,
  pontosDeMana: 20,
  imagem: "assets/images/personagem.jpg",
);

final atributosMock = Atributos(
  forca: 14,
  destreza: 18,
  constituicao: 12,
  inteligencia: 13,
  sabedoria: 16,
  carisma: 10,
);

final habilidadesMock = [
  Habilidade(
    nome: "Pontaria",
    descricao: "+2 em ataques à distância",
    pericias: true,
    tipo: "Combate",
  ),
  Habilidade(
    nome: "Esquiva",
    descricao: "+2 em defesa contra ataques que pode ver",
    pericias: true,
    tipo: "Combate",
  ),
  Habilidade(
    nome: "Magias de Allihanna",
    descricao: "Pode lançar magias da divindade",
    pericias: false,
    tipo: "Magia",
  ),
  // Adicione mais habilidades conforme necessário
];

final equipamentosMock = [
  Equipamento(
    nome: 'Espada Longa',
    tipo: 'Arma',
    descricao: '1d8 de dano, corte',
    quantidade: 1,
    peso: 1.5,
  ),
  // ... outros equipamentos
];
