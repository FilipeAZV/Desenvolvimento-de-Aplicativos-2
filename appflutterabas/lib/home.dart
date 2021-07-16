import 'package:appflutterabas/Tela.dart';
import 'package:appflutterabas/TelaUsuario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {

  String campo,usuario;
  Home({required this.campo, required this.usuario});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 1"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>
          [
            RaisedButton(
                child: Text("Proxima Tela"),
                padding: EdgeInsets.all(20),
                onPressed:()
                {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Tela(campo: 'Faculade QI' , usuario: "Brian",))
                  );
                }
            ),
            RaisedButton(
                child: Text("Proxima Tela TelaUsuario"),
                padding: EdgeInsets.all(20),
                onPressed:()
                {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => TelaUsuario(campo: 'brian.neukamp@qi.edu.br' , usuario: "Brian QI",))
                  );
                }
            ),

          ],
        ),
      ),
    );
  }
}