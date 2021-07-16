import 'package:flutter/material.dart';

class CadastroFornecedor extends StatefulWidget {
  const CadastroFornecedor({Key? key}) : super(key: key);

  @override
  _CadastroFornecedorState createState() => _CadastroFornecedorState();
}

class _CadastroFornecedorState extends State<CadastroFornecedor> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Cadastro de Fornecedores"),
    );
  }
}
