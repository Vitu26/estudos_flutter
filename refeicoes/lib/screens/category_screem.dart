import 'package:flutter/material.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoryScreem extends StatelessWidget {
  const CategoryScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vamos cozinhar!'),
      ),
      body: GridView(
        //uma area que tem scroll
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,//proporção de cada elemento no gridview
          crossAxisSpacing: 20,//espaçamento no eixo cruzado
          mainAxisSpacing: 20,
          ),
          children : DUMMY_CATEGORIES.map((cat){
            return CategoryItem(category: cat);
          }).toList(),//o children espera receber uma lista
        ),
    );
  }
}