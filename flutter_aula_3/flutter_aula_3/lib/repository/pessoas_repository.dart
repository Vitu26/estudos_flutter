import 'dart:convert';

import 'package:flutter/material.dart';
import '../pessoa.dart';
import 'package:http/http.dart' as http;

class PessoasRepository extends ChangeNotifier {
  List<Pessoa> pessoas = [];
  bool isSorted = false;

  PessoasRepository() {
    initRepository();
  }

  sort() {
    if (!isSorted) {
      pessoas.sort((Pessoa a, Pessoa b) => a.nome.compareTo(b.nome));
      isSorted = true;
    } else {
      pessoas = pessoas.reversed.toList();
    }
    notifyListeners();
  }

  initRepository() async {
    final response = await http.get(
      Uri.parse('http://randomuser.me/api/?nat=br&&results=20'),
    );
    final json = jsonDecode(response.body) as Map;

    for (var pessoa in json['results']) {
      pessoas.add(Pessoa(
        nome: "${pessoa['name']['first']} ${pessoa['name']['last']}",
        avatar: pessoa['picture']['thumbnail'],
      ));
    }
    notifyListeners();
  }
}
