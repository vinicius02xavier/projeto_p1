// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:projeto_p1/main.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );
}

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red, Colors.yellow],
          ),
        ),

        child: Padding(
          padding: EdgeInsets.all(30),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                ),

                SizedBox(height: 35),

                Image.asset(
                  'Images/logo.png',
                  color: Color(0xff2e2929),
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),

                SizedBox(height: 15),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2e2929),
                    ),
                  ),
                ),

                SizedBox(height: 25),

                TextFormField(
                  controller: txtEmail,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    hintText: 'Informe o seu email',
                  ),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe um email';
                    }
                    final emailRegex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
                    if (!emailRegex.hasMatch(value)) {
                      return 'Por favor, insira um e-mail válido';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 30),

                TextFormField(
                  controller: txtSenha,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                    hintText: 'Informe a sua senha',
                  ),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe a senha';
                    }
                    if (value.length < 6) {
                      return 'A senha deve ter pelo menos 6 caracteres';
                    }
                    if (!RegExp(r'[A-Z]').hasMatch(value)) {
                      return 'A senha deve ter pelo menos uma letra maiúscula';
                    }
                    if (!RegExp(r'[0-9]').hasMatch(value)) {
                      return 'A senha deve ter pelo menos um número';
                    }
                    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
                      return 'A senha deve ter pelo menos um caractere especial';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 10),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      //Ir para tela Esqueci Minha Senha
                    },
                    child: Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 55),

                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      //Ir para a tela Cardápio
                    }
                  },
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: Size(200, 60),
                  )
                ),

                SizedBox(height: 30),

                ElevatedButton(
                  onPressed: () {
                    //Ir para tela Criar Conta
                  },
                  child: Text(
                    'Criar Conta',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: Size(200, 60),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}