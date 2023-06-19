import 'package:flutter/material.dart';
import 'package:flutter_aula1/pages/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //estrutura que traz todos componetes necessários de uma página
      appBar: AppBar(
        title: Text('Brasileirão'),
      ),
      body: ListView.separated(
        itemCount: controller.tabela.length,
        itemBuilder: (BuildContext contexto, int i) {
          final tabela = controller.tabela;
          return ListTile(
            leading: Image.network(tabela[i].brasao),
            title: Text(tabela[i].nome),
            trailing: Text(
              tabela[i].pontos.toString(),
            ),
          );
        },
        separatorBuilder: (_, __) => Divider(),
        padding: EdgeInsets.all(16),
      ),
    );
  }
}
