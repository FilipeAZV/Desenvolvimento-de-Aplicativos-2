import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tela extends StatefulWidget {

  String campo, usuario;
  Tela({required this.campo,required this.usuario});

  @override
  _TelaState createState() => _TelaState();
}
class _TelaState extends State<Tela> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 2"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>
          [
              Text("Faculdade é: ${widget.campo}"),
              Text("O usuário é: ${widget.usuario}"),
          ],
        ),
      ),
    );
  }
}