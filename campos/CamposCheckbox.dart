import 'package:flutter/material.dart';

class CamposCheckbox extends StatefulWidget {
  const CamposCheckbox({Key? key}) : super(key: key);

  @override
  _CamposCheckboxState createState() => _CamposCheckboxState();
}

class _CamposCheckboxState extends State<CamposCheckbox> {

  bool _selecionavalor1 = false;
  bool _selecionavalor2 = false;
  bool _selecionavalor3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados CheckBox"),
      ),

      body: Container(
        child: Column( //add uma coluna
          children: <Widget> [//add o que pode ser colocado dentro da coluna, o tipo de conteúdo

            CheckboxListTile(
              title: Text("Selecione 1: "),
                value: _selecionavalor1,
                onChanged: (_valorcheck1) {
                  setState(() {
                    if (_selecionavalor1) {
                      _selecionavalor1 = false;
                    }
                    else {
                      _selecionavalor1 = true;
                    }
                  });
                  print("Valor Selecionado" + _selecionavalor1.toString());
                }),

            CheckboxListTile(
                title: Text("Selecione 2: "),
                value: _selecionavalor2,
                onChanged: (_valorcheck2) {
                  setState(() {
                    if (_selecionavalor2) {
                      _selecionavalor2 = false;
                    }
                    else {
                      _selecionavalor2 = true;
                    }
                  });
                  print("Valor Selecionado" + _selecionavalor2.toString());
                }),

            CheckboxListTile(
                title: Text("Selecione 3: "),
                value: _selecionavalor3,
                onChanged: (_valorcheck3) {
                  setState(() {
                    if (_selecionavalor3) {
                      _selecionavalor3 = false;
                    }
                    else {
                      _selecionavalor3 = true;
                    }
                  });
                  print("Valor Selecionado" + _selecionavalor3.toString());
                }),
          ],
        ),
      ),
    );
  }
}