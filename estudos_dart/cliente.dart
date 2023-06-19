import 'pessoa.dart';

class Cliente extends Pessoa {
  String id;
  String cpf;

  //construtor
  Cliente(
      {required this.id,
      required this.cpf,
      required String nome,
      required String sobrenome})
      : super(nome: nome, sobrenome: sobrenome); //pega as informações da classa na qual ela extends a classe super
}
