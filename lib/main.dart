import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget { //Pega a classe Home e extende ela
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State {

  var _letras = ["A", "B","C","D","E","F","G","H","J","K"];
  var _gerar = "Clique aqui para Gerar Letras";

  //Método
  void _letrasGeradas()
  {
    var ramdomico = Random().nextInt(10);//O random irá percorrerr o array lá de cima de 3 letras, e fará aqui
    setState(() {
      _gerar = _letras [ramdomico];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(// é responsavel pelo app bar
      appBar: AppBar(
        title: Text("Cabeçalho"),
        backgroundColor: Colors.lightBlue,
      ),

          body: Container(
            width: double.infinity,
                padding: EdgeInsets.all(16),
               //decoration: BoxDecoration(
                  //border: Border.all(width: 3, color: Colors.amber)
                //),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: <Widget>
              [
                Image.asset("Imagens/logo.png"),
                Text(
                  _gerar,
                  textAlign: TextAlign.center,
                  style: (
                  TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontStyle: FontStyle.normal
                  )
                  ),
                ),
                RaisedButton(
                  child: Text(
                    "Clique aqui",
                      style: TextStyle(
                      color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  color: Colors.black,
                  onPressed: _letrasGeradas,
                ),
              ],
            ),
          ),
    );
    return Container();
  }
}

