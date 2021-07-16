import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CamposDart extends StatefulWidget {
  @override
  _CamposDart createState() => _CamposDart();
}

class _CamposDart extends State<CamposDart> {

  TextEditingController _controllerUsuario = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  String _valores = "";

  void _loginUsuario()
  {
    String usuario = _controllerUsuario.text;
    String senha = _controllerSenha.text;

    if(usuario.isEmpty)
    {
      setState(() {
        _valores =  "Campos Nome em Branco";
      });

    }
    else if(senha.isEmpty)
    {
      setState(() {
        _valores =  "Campos senha em Branco";
      });
    }
    else
    {
      _valores =  "ok";
    }
    _limparCampos();
  }

  void _limparCampos()
  {
    _controllerUsuario.text = "";
    _controllerSenha.text= "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Login"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(//Filho de container, aqui dentro exite filhos que irão carregar inputype, podemos colcoar dentro dele várias opções
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset("imagem/logo.png"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Digite Seu E-mail e Senha",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Digite Seu E-mail"
                ),
                style: TextStyle(
                    fontSize: 22
                ),
                controller: _controllerUsuario,

              ),

              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Digite sua Senha"
                ),
                style: TextStyle(
                    fontSize: 22
                ),
                controller: _controllerSenha,
                obscureText: true,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Logar",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    onPressed: _loginUsuario
                ),
              ),
              Padding(padding: EdgeInsets.only(top:15),
                child: Text
                  (
                  _valores,
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}