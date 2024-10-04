// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:projeto_p1/login.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 209, 209),
      body: Padding(
          padding: EdgeInsets.only(left: 30, top: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                      builder: (context) => InkWell(
                            onTap: () {
                              //Ir para tela menu
                            },
                            child: Icon(
                              Icons.menu,
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          )),
                  Image(
                    height: 150,
                    width: 150,
                    image: AssetImage(
                      'Images/logojapa.png.png',
                    ),
                  ),
                  Builder(
                    builder: (context) => InkWell(
                      onTap: () {
                        //Ir para tela menu
                      },
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
               criarCampoCategoria(context, "Entradas", TelaLogin()),
               criarCampoItem("Sushi", "Images/logojapa.png.png", 10),
            ],
          )
          ),
    );
  }
}

//Botão Categorias
Widget criarCampoCategoria(BuildContext context, String nome, Widget tela) {
  BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.red.withOpacity(0.3),
        spreadRadius: 2,
        blurRadius: 7,
        offset: Offset(0, 3)
      )
    ]
  );
  return InkWell(
    onTap: () {
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => tela),
      );
    },
    child: Text(
      nome,
      style: TextStyle(
        fontSize: 15,
      ),
    ),
    borderRadius: BorderRadius.circular(20),
  );
}

criarCampoItem(String nome, String imagem, int valor) {
  Card(
    child: InkWell(
      onTap: () {
        //Ir para item
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(imagem),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  );
}