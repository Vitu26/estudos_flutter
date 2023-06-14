import 'package:flutter/material.dart';

import '../repository/pessoas_repository.dart';

class PessoasPage extends StatefulWidget {
  const PessoasPage({super.key});

  @override
  State<PessoasPage> createState() => _PessoasPageState();
}

class _PessoasPageState extends State<PessoasPage> {
  late PessoasRepository pessoasRepo;

  @override
  void initeState() {
    super.initState();
    pessoasRepo = PessoasRepository();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => pessoasRepo.sort(), 
          icon: const Icon(Icons.swap_vert_circle),
          )
        ],
        title: const Text('Pessoas'),
      ),
      body: AnimatedBuilder(
        animation: pessoasRepo,
        builder: (context, child) {
          final pessoas = pessoasRepo.pessoas;

          return (pessoas.isEmpty)
              ? const Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemCount: pessoas.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      child: ClipRRect(
                        child: Image.network(pessoas[index].avatar),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    title: Text(pessoas[index].nome),
                  ),
                  separatorBuilder: (_, __) => const Divider(),
                );
        },
      ),
    );
  }
}
