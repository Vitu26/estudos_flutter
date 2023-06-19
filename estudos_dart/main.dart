import 'cartao.dart';
import 'cliente.dart';
import 'compra.dart';
import 'conta.dart';
import 'fatura.dart';

main() {
  var conta = Conta(
    cliente: Cliente(
      id: '12345', 
      cpf: '097.034.024-96', 
      nome: 'Lombrigo', 
      sobrenome: 'Lemos',
      ),
    cartao: Cartao(
      numero: '123456789123', 
      limite: 24500, 
      mes: 06, 
      ano: 2023, 
      codigo: 250,
      ),
    faturas: [
      Fatura(
        compras: [
          Compra(valor: 12.5, descricao: 'Cerveja', data: '12/06'),
          Compra(valor: 100, descricao: 'Feria da festa', data: '15/06'),
        ],
         mes: 6, 
         ano: 2023,
      ),
    ],
  );
}
