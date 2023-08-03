import 'package:flutter/material.dart';
import 'package:refeicoes/models/category.dart';


class CategoryItem extends StatelessWidget {
  
  //recebendo uma categoria como parametro
  final Category category;

  //construtor que recebe uma categoria
  const CategoryItem({super.key, required this.category});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title),
    );
  }
}