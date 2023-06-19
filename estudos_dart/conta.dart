import 'cartao.dart';
import 'cliente.dart';
import 'fatura.dart';

class Conta {
  Cliente cliente;
  Cartao cartao;
  List<Fatura> faturas; //lista de faturas

  Conta({required this.cliente, required this.cartao, required this.faturas});
}
