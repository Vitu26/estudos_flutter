import 'compra.dart';

class Fatura {
  List<Compra> compras; //uma lista das compras
  int mes;
  int ano;

  Fatura({required this.compras, required this.mes, required this.ano});
}
