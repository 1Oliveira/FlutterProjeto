import 'package:flutter/material.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:cpf_cnpj_validator/cnpj_validator.dart';

class CadastroEmpresaPage extends StatefulWidget {
  @override
  _CadastroEmpresaPageState createState() => _CadastroEmpresaPageState();
}

class _CadastroEmpresaPageState extends State<CadastroEmpresaPage> {
  final _formKey = GlobalKey<FormState>();
  late String _nomeEmpresa, _telefone, _endereco, _cpfCnpj;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Empresa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nome da Empresa'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
                onSaved: (value) => _nomeEmpresa = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Telefone'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
                onSaved: (value) => _telefone = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Endereço'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
                onSaved: (value) => _endereco = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'CPF/CNPJ'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo obrigatório';
                  } else if (!CPFValidator.isValid(value) &&
                      !CNPJValidator.isValid(value)) {
                    return 'CPF/CNPJ inválido';
                  }
                  return null;
                },
                onSaved: (value) => _cpfCnpj = value!,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print('Nome da Empresa: $_nomeEmpresa');
                    print('Telefone: $_telefone');
                    print('Endereço: $_endereco');
                    print('CPF/CNPJ: $_cpfCnpj');
                    Navigator.pushNamed(context, '/empresa/usuarios');
                  }
                },
                child: const Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
