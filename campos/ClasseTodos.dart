import 'package:flutter/material.dart';

class ClasseTodos extends StatefulWidget {
  const ClasseTodos({Key? key}) : super(key: key);

  @override
  _ClasseTodosState createState() => _ClasseTodosState();
}

class _ClasseTodosState extends State<ClasseTodos> {

  bool _radio = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Tarefa Layout, apenas visual"),
      ),

      body: Container(
        child: Column(
          children: <Widget>
          [
            RadioListTile(
                title: Text("RadioList (Genero)"),
                value: _radio,
                groupValue: _radio,
                onChanged: (_escolha)
                {
                  setState(() {

                  });
                }
            ),

            CheckboxListTile(
                title: Text("Checkbox (Checar no botão)"),
                value: _radio,
                onChanged: (_valorcheck1) {
                  setState(() {
                  });
                }),

            SwitchListTile(
                title: Text("SwitchList (Escolha)"),
                value: _radio,
                onChanged: (bool _valor)
                {
                  setState(()
                  {
                  });
                }
            ),
          ],
        ),
      ),
    );
  }
}






