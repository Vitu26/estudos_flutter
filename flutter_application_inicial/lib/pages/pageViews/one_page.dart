import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context)
                    .size
                    .width, //pear toda a largura da página
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                  child: Text(
                    "Opa meus joves",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ],
          );
  }
}