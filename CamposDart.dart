import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CamposDart extends StatefulWidget {
  const CamposDart({Key? key}) : super(key: key);

  @override
  _CamposDartState createState() => _CamposDartState();
}

class _CamposDartState extends State<CamposDart> {

  TextEditingController _textEditingController = TextEditingController();// isto está recebendo o textEditingController

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Componente de entrada"),
      ),

      body: Column
        (
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              keyboardType: TextInputType.number,//tipo de entrada
              decoration: InputDecoration(
                labelText: "Digite um Valor"//Caixinha do anunciado
              ),
              maxLength: 10,//limite o número de caractéries
              obscureText: true,//Esconde os números
              onSubmitted: (String e)
              {
                print("Valor Digitado foi:" + e);
              },
              controller: _textEditingController,
            ),
          ),

          RaisedButton(
            child: Text("Clique no Botão"),
              color: Colors.lightBlue,
              onPressed:()
              {
                print("Valor Digitado foi:" + _textEditingController.text);
              },
          ),
      ]
      ),
    );
  }
}
