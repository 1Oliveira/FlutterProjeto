import 'package:flutter/material.dart';
import 'package:servicos/core/widgets/page_overlay.dart';
import 'package:servicos/modules/cliente/domain/entities/telefone.dart';
import 'package:servicos/modules/cliente/presenter/pages/widgets/telefone_overlay.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showOverlay(BuildContext context) {
    Navigator.of(context).push(TelefoneWidget(telefone: Telefone.empty()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/empresa');
              },
              child: const Text('Cadastrar Empresa'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/empresa/usuario');
              },
              child: const Text('Cadastrar Novo Usuário'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cliente');
              },
              child: const Text('Cadastrar novo cliente'),
            ),
            ElevatedButton(
                onPressed: () => _showOverlay(context),
                child: Text("teste overlay"))
          ],
        ),
      ),
    );
  }
}
