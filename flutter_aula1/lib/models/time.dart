import 'package:flutter/material.dart';

import 'titulos.dart';

class Time {
  //criando uma classe
  String nome;
  String brasao;
  int pontos;
  Color cor;
  List<Titulo> titulos = [];

  //fazendo o construtor
  Time({required this.nome, required this.brasao, required this.pontos, required this.cor});
}
