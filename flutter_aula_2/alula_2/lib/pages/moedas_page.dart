import 'package:alula_2/repository/moeda_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/moedas.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  @override
  Widget build(BuildContext context) {
    final tabela = MoedasRepository.tabela;
    //passando os valores para real com o NumberFormat
    NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');
    //criando uma lista e pegando da lista
    List<Moeda> selecionadas = [];

    return Scaffold(
      //traz toda formatação necessária para se criar um app
      appBar: AppBar(
        title: Text('Cripto Moedas'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda) {
          return ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              leading: (selecionadas.contains(tabela[moeda]))
                  ? CircleAvatar(
                      child: Icon(Icons.check),
                    )
                  : SizedBox(
                      child: Image.asset(tabela[moeda].icone),
                      width: 40,
                    ),
              title: Text(
                tabela[moeda].nome,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.indigo,
                ),
              ),
              trailing: Text(
                real.format(tabela[moeda].preco),
              ),
              selected: false, //para selecionar na lista
              selectedTileColor: Colors.indigo[50], //backgroundo do selecionado
              //função para quando o usuário manter pressionado por um certo tempo
              onLongPress: () {
                setState(() {
                  (selecionadas.contains(tabela[moeda]))
                      ? selecionadas.remove(tabela[moeda])
                      : selecionadas.add(tabela[moeda]);
                });
              });
        },
        padding: EdgeInsets.all(16),
        separatorBuilder: (_, __) => Divider(),
        itemCount: tabela.length,
      ), //sempre especificar o tamanho da lista),
    );
  }
}
