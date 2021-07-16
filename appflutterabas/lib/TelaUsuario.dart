import 'package:flutter/material.dart';

class TelaUsuario extends StatefulWidget {

  String campo, usuario;
  TelaUsuario({required this.campo,required this.usuario});

  @override
  _TelaUsuarioState createState() => _TelaUsuarioState();
}

class _TelaUsuarioState extends State<TelaUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Usuario"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>
          [
            Text("E-mail é: ${widget.campo}"),
            Text("O usuário é: ${widget.usuario}"),
          ],
        ),
      ),
    );
}
