import 'package:cpf_cnpj_validator/cnpj_validator.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:flutter/material.dart';

class CadastroUsuarioPage extends StatefulWidget {
  @override
  _CadastroUsuarioPageState createState() => _CadastroUsuarioPageState();
}

class _CadastroUsuarioPageState extends State<CadastroUsuarioPage> {
  final _formKey = GlobalKey<FormState>();

  late String _nome, _telefone, _cpfCnpj, _funcaoCargo, _email, _senha;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Usuário'),
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
                decoration: const InputDecoration(
                  labelText: 'Telefone',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, informe o telefone';
                  }
                  return null;
                },
                onSaved: (value) => _telefone = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value!.isEmpty || !value!.contains('@')) {
                    return 'Por favor, informe um email válido';
                  }
                  return null;
                },
                onSaved: (value) => _email = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Função/Cargo',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, informe a função/cargo';
                  }
                  return null;
                },
                onSaved: (value) => _funcaoCargo = value!,
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
                decoration: InputDecoration(
                    labelText: 'Senha',
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )),
                obscureText: _obscureText,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, informe a senha';
                  }
                  return null;
                },
                onSaved: (value) => _senha = value!,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print('Nome: $_nome');
                    print('Telefone: $_telefone');
                    print('CPF/CNPJ: $_cpfCnpj');
                    print('Função/Cargo: $_funcaoCargo');
                    print('Email: $_email');
                    print('Senha: $_senha');
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
