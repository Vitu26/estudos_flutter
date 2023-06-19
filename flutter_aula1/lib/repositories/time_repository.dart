import 'package:flutter/material.dart';
import '../models/time.dart';
import '../models/titulos.dart';

class TimesRepository {
  final List<Time> _times = [];

  get times => this.times;

  void addTitulo({required Time time, Titulo? titulo}) {
    time.titulos.add(titulo!);
  }
}
