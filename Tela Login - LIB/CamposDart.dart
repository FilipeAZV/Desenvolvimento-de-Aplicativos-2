import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CamposDart extends StatefulWidget {
  const CamposDart({Key? key}) : super(key: key);

  @override
  _CamposDartState createState() => _CamposDartState();
}

class _CamposDartState extends State<CamposDart> {

  TextEditingController _campoUsuario = TextEditingController();
  TextEditingController _campoSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes de Entrada"),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Image.asset("imagem/logo.png"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: TextField(
                  keyboardType : TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Digite seu Email"
                  ),
                  //maxLength: 8,
                  //obscureText: false,
                  onSubmitted: (String e)
                  {
                    print("Valor Digitado foi: " +e);
                  },
                  controller: _campoUsuario,
                ),
              ),

              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  keyboardType : TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Digite Sua Senha"
                  ),
                  //maxLength: 8,
                  obscureText: true,
                  onSubmitted: (String e)
                  {
                    print("Valor Digitado foi: " +e);
                  },
                  controller: _campoSenha,
                ),
              ),

              // ignore: deprecated_member_use
              RaisedButton(
                child: Text("Clique no Botão"),
                color: Colors.lightBlue,
                onPressed: ()
                {
                  print("Valor Digitado é : " + _campoUsuario.text);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}