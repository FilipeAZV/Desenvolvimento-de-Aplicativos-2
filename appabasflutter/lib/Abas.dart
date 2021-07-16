import 'package:appabasflutter/CadastroCliente.dart';
import 'package:appabasflutter/CadastroFornecedor.dart';
import 'package:appabasflutter/CadastroProdutos.dart';
import 'package:flutter/material.dart';

class Abas extends StatefulWidget {
  const Abas({Key? key}) : super(key: key);

  @override
  _AbasState createState() => _AbasState();
}

class _AbasState extends State<Abas>  with SingleTickerProviderStateMixin{

  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync:this);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Flutter Abas"),
        bottom: TabBar
          (
          controller: _tabController,
          tabs: <Widget> [

            Tab(
              text: "Cadastro de Clientes",
              icon: Icon(Icons.ac_unit),
            ),

            Tab(
              text: "Cadastro de Produtos",
              icon: Icon(Icons.print),
            ),

            Tab(
              text: "Cadastro de Fornecedores",
              icon: Icon(Icons.ac_unit_sharp),
            ),

          ],
        ),
      ),

        body: TabBarView(
        controller: _tabController,
        children: [
          CadastroCliente(),
         CadastroProdutos(),
          CadastroFornecedor(),
        ],
      )
    );
  }
}