import 'package:tabletoprpg_app/models/atributos.dart';

class Pericia {
  final String nome;
  final String descricao;
  final String atributoBase; // 'FOR', 'DES', 'CON', 'INT', 'SAB', 'CAR'
  final bool somenteTreinada;
  final bool penalidadeArmadura;
  int pontos; // Quantidade de pontos investidos

  Pericia({
    required this.nome,
    required this.descricao,
    required this.atributoBase,
    this.somenteTreinada = false,
    this.penalidadeArmadura = false,
    this.pontos = 0,
  });

  // Calcula o modificador da perícia baseado no atributo e pontos investidos
  int calcularModificador(
    Atributos atributos, {
    int nivel = 1,
    bool treinada = false,
  }) {
    final modificadorAtributo = _getModificadorAtributo(atributos);
    final modificadorTreino = treinada || pontos >= 1 ? nivel + 2 : 0;

    return modificadorAtributo + modificadorTreino + pontos;
  }

  int _getModificadorAtributo(Atributos atributos) {
    switch (atributoBase) {
      case 'FOR':
        return atributos.getModificador(atributos.forca);
      case 'DES':
        return atributos.getModificador(atributos.destreza);
      case 'CON':
        return atributos.getModificador(atributos.constituicao);
      case 'INT':
        return atributos.getModificador(atributos.inteligencia);
      case 'SAB':
        return atributos.getModificador(atributos.sabedoria);
      case 'CAR':
        return atributos.getModificador(atributos.carisma);
      default:
        return 0;
    }
  }
}

class ListaPericias {
  final List<Pericia> _todasPericias;

  ListaPericias()
    : _todasPericias = [
        Pericia(
          nome: 'Acrobacia',
          descricao: 'Testes para equilíbrio e movimentos acrobáticos',
          atributoBase: 'DES',
          penalidadeArmadura: true,
        ),
        Pericia(
          nome: 'Adestramento',
          descricao: 'Treinar animais e fazer eles obedecerem',
          atributoBase: 'CAR',
          somenteTreinada: true,
        ),
        Pericia(
          nome: 'Atletismo',
          descricao: 'Saltar, escalar e nadar',
          atributoBase: 'FOR',
          penalidadeArmadura: true,
        ),
        Pericia(
          nome: 'Cavalgar',
          descricao: 'Montar e controlar montarias',
          atributoBase: 'DES',
        ),
        Pericia(
          nome: 'Conhecimento',
          descricao: 'Saber sobre diversos assuntos',
          atributoBase: 'INT',
          somenteTreinada: true,
        ),
        Pericia(
          nome: 'Diplomacia',
          descricao: 'Persuadir e negociar',
          atributoBase: 'CAR',
        ),
        Pericia(
          nome: 'Enganação',
          descricao: 'Mentir e disfarces',
          atributoBase: 'CAR',
        ),
        Pericia(
          nome: 'Fortitude',
          descricao: 'Resistir a venenos e doenças',
          atributoBase: 'CON',
        ),
        Pericia(
          nome: 'Furtividade',
          descricao: 'Esconder-se e mover-se silenciosamente',
          atributoBase: 'DES',
          penalidadeArmadura: true,
        ),
        Pericia(
          nome: 'Guerra',
          descricao: 'Estratégia militar e táticas de combate',
          atributoBase: 'INT',
          somenteTreinada: true,
        ),
        Pericia(
          nome: 'Iniciativa',
          descricao: 'Agir rápido no combate',
          atributoBase: 'DES',
        ),
        Pericia(
          nome: 'Intimidação',
          descricao: 'Amedrontar e coagir',
          atributoBase: 'CAR',
        ),
        Pericia(
          nome: 'Intuição',
          descricao: 'Percepção e senso de perigo',
          atributoBase: 'SAB',
        ),
        Pericia(
          nome: 'Investigação',
          descricao: 'Encontrar pistas e analisar cenas',
          atributoBase: 'INT',
        ),
        Pericia(
          nome: 'Luta',
          descricao: 'Combate corpo-a-corpo',
          atributoBase: 'FOR',
        ),
        Pericia(
          nome: 'Misticismo',
          descricao: 'Conhecimento sobre magia e religiões',
          atributoBase: 'SAB',
          somenteTreinada: true,
        ),
        Pericia(
          nome: 'Nobreza',
          descricao: 'Conhecimento sobre reinos e linhagens',
          atributoBase: 'INT',
          somenteTreinada: true,
        ),
        Pericia(
          nome: 'Ofício',
          descricao: 'Habilidades artesanais',
          atributoBase: 'INT',
        ),
        Pericia(
          nome: 'Percepção',
          descricao: 'Notar detalhes e perceber perigos',
          atributoBase: 'SAB',
        ),
        Pericia(
          nome: 'Pilotagem',
          descricao: 'Controlar veículos',
          atributoBase: 'DES',
        ),
        Pericia(
          nome: 'Pontaria',
          descricao: 'Ataques à distância',
          atributoBase: 'DES',
        ),
        Pericia(
          nome: 'Reflexos',
          descricao: 'Esquivar de armadilhas e ataques',
          atributoBase: 'DES',
        ),
        Pericia(
          nome: 'Religião',
          descricao: 'Conhecimento sobre divindades e dogmas',
          atributoBase: 'SAB',
          somenteTreinada: true,
        ),
        Pericia(
          nome: 'Sobrevivência',
          descricao: 'Viver na natureza e encontrar caminhos',
          atributoBase: 'SAB',
        ),
        Pericia(
          nome: 'Vontade',
          descricao: 'Resistir a efeitos mentais',
          atributoBase: 'SAB',
        ),
      ];

  List<Pericia> get todas => _todasPericias;

  List<Pericia> getPericiasPorAtributo(String atributo) {
    return _todasPericias.where((p) => p.atributoBase == atributo).toList();
  }
}
