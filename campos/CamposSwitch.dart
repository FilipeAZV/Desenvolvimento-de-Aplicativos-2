import 'package:flutter/material.dart';

class CamposSwitch extends StatefulWidget {
  const CamposSwitch({Key? key}) : super(key: key);

  @override
  _CamposSwitchState createState() => _CamposSwitchState();
}

class _CamposSwitchState extends State<CamposSwitch> {

  bool _logarCadastrar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Campo Switch"),
      ),
      body: Container(
        child: Column(
          children: <Widget>
          [
            SwitchListTile(
                title: Text("Deseja Logar ou Cadastrar? "),
                value: _logarCadastrar,
                onChanged: (bool _valor)
                {
                  setState(()
                  {
                    _logarCadastrar;
                  });
                }
            ),

            RaisedButton(
                child: Text("Salvar",
                  style: TextStyle
                    (
                    fontSize: 18,
                  ),
                ),
                onPressed: ()
                {
                  if(_logarCadastrar)
                  {
                    _logarCadastrar = false;
                    print("Deseja Cadastar " +_logarCadastrar.toString());
                  }
                  else
                  {
                    _logarCadastrar = true;
                    print("Deseja Logar" +_logarCadastrar.toString());
                  }
                }
            )
          ],
        ),
      ),
    );
  }
}