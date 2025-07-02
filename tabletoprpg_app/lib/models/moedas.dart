class Moedas {
  final int tibaresOuro;
  final int tibaresPrata;
  final int tibaresCobre;

  Moedas({this.tibaresOuro = 0, this.tibaresPrata = 0, this.tibaresCobre = 0});

  String get formatado {
    return 'TO: $tibaresOuro, T\$: $tibaresPrata, TC: $tibaresCobre';
  }
}
