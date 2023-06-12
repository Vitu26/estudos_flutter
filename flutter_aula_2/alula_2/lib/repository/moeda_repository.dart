import 'package:alula_2/models/moedas.dart';

class MoedasRepository {
  static List<Moeda> tabela = [
    Moeda(
      icone: 'images/', 
      nome: 'Bitcoin', 
      sigla: 'BTC', 
      preco: 164603.00,
    ),
    Moeda(
      icone: 'images/', 
      nome: 'Etherium,', 
      sigla: 'ETH', 
      preco: 9716.00,
    ),
    Moeda(
      icone: 'images/', 
      nome: 'XRP', 
      sigla: 'XRP', 
      preco: 3.34,
    ),
    Moeda(
      icone: 'images/', 
      nome: 'Cardano', 
      sigla: 'ADA', 
      preco: 6.32,
    ),
  ];
}
