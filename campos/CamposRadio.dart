import 'package:flutter/material.dart';

class CamposRadio extends StatefulWidget {
  const CamposRadio({Key? key}) : super(key: key);

  @override
  _CamposRadioState createState() => _CamposRadioState();
}

class _CamposRadioState extends State<CamposRadio> {
  bool _escolhaUsuario = false;
  bool _escolha = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Campos Radio"),
      ),
      body: Container(
        child: Column(
          children: <Widget>
          [
            RadioListTile(
                title: Text("Masculino"),
                value: _escolha = true,
                groupValue: _escolhaUsuario,
                onChanged: (_escolha)
                {
                  setState(() {
                    if(_escolhaUsuario)
                    {
                      _escolhaUsuario =false;
                    }
                    else
                    {
                      _escolhaUsuario = true;
                    }
                    print("Resultado Masculino" +  _escolhaUsuario.toString());//debug
                    print("Resultado Masculino Escolha" + _escolha.toString());//debug
                  });
                }
            ),

            RadioListTile(
                title: Text("Feminino"),
                value: _escolha = false,
                groupValue: _escolhaUsuario,
                onChanged: (_escolha)
                {
                  setState(() {
                    if(_escolhaUsuario)
                    {
                      _escolhaUsuario =false;
                    }
                    else
                    {
                      _escolhaUsuario = true;
                    }
                    print("Resultado Feminino" + _escolhaUsuario.toString());//debug
                    print("Resultado Feminino Escolha " + _escolha.toString());//debug
                  });
                }
            ),

            RaisedButton(
                child: Text("Valor dos Radios",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                onPressed: ()
                {
                  print("Resulatdo " + _escolhaUsuario.toString());
                }
            )
          ],
        )
      ),
    );
  }
}