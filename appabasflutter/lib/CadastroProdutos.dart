import 'package:flutter/material.dart';

class CadastroProdutos extends StatefulWidget {
  const CadastroProdutos({Key? key}) : super(key: key);

  @override
  _CadastroProdutosState createState() => _CadastroProdutosState();
}

class _CadastroProdutosState extends State<CadastroProdutos> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Cadastro de Produtos"),
    );
  }
}
