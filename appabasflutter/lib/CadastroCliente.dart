import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroCliente extends StatefulWidget {
  const CadastroCliente({Key? key}) : super(key: key);

  @override
  _CadastroClienteState createState() => _CadastroClienteState();
}

class _CadastroClienteState extends State<CadastroCliente> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget> [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Cadastro de Cliente",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal
              ),
            ),
          ),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: "Digite seu Nome"
            ),
            style: TextStyle(
                fontSize: 18
            ),
            //controller: _controllerUsuario,
          ),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: "Digite seu Endereço"
            ),
            style: TextStyle(
                fontSize: 18
            ),
            //controller: _controllerUsuario,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Digite sua Idade"
            ),
            style: TextStyle(
                fontSize: 18
            ),
            //controller: _controllerUsuario,
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Cadastrar Cliente",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
                onPressed: (){}
            ),
          ),
        ],
      ),
    );
  }
}