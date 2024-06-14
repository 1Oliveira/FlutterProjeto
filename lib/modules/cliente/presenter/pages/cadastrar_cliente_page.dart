import 'package:cpf_cnpj_validator/cnpj_validator.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:flutter/material.dart';

class CadastroClientePage extends StatefulWidget {
  @override
  _CadastroClientePageState createState() => _CadastroClientePageState();

  const CadastroClientePage({super.key});
}

class _CadastroClientePageState extends State<CadastroClientePage> {
  final _formKey = GlobalKey<FormState>();

  late String _nome, _telefone, _email, _logradouro, _cpfCnpj;

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de clientes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nome',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, informe o nome';
                  }
                  return null;
                },
                onSaved: (value) => _nome = value!,
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
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                onSaved: (value) => _email = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Endereço',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor informe o endereço';
                  }
                  return null;
                },
                onSaved: (value) => _logradouro = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Telefone',
                ),
                onSaved: (value) => _telefone = value!,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print('Nome: $_nome');
                    print('Telefone: $_telefone');
                    print('CPF/CNPJ: $_cpfCnpj');
                    print('Função/Cargo: $_logradouro');
                    print('Email: $_email');
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
