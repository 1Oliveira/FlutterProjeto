// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cpf_cnpj_validator/cnpj_validator.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';
import 'package:servicos/modules/cliente/domain/entities/cliente.dart';

import 'package:servicos/modules/cliente/presenter/controllers/cliente_form_controller.dart';
import 'package:servicos/modules/cliente/presenter/pages/widgets/telefone_overlay.dart';

class CadastroClientePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final ClienteFormController formController;

  CadastroClientePage({Key? key, Cliente? cliente})
      : formController = ClienteFormController(cliente: cliente),
        super(key: key);

  Cliente get cliente => formController.cliente;

  set cliente(Cliente value) {
    formController.cliente = value;
  }

  @override
  Widget build(BuildContext context) {
    return RxBuilder(builder: (context) {
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
                  onSaved: (value) => cliente = cliente.copyWith(nome: value),
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
                  onSaved: (value) => cliente = cliente.copyWith(cpf: value),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  onSaved: (value) => cliente = cliente.copyWith(email: value),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Text("Telefones"),
                  ],
                ),
                ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: cliente.telefones.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (BuildContext context, int index) {
                      final tel = cliente.telefones[index];
                      return ListTile(
                        onTap: () => Navigator.push(
                            context, TelefoneWidget(telefone: tel)),
                        leading: const Icon(Icons.add_call),
                        title: Text(
                          '(${tel.ddd}) ${tel.numero}',
                          textAlign: TextAlign.end,
                        ),
                      );
                    }),
                const Row(
                  children: [
                    Text("Endereços"),
                  ],
                ),
                ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: cliente.enderecos.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (BuildContext context, int index) {
                      final end = cliente.enderecos[index];
                      return ListTile(
                        leading: const Icon(Icons.pin_drop_outlined),
                        title: Text(
                          '${end.logradouro} Nº ${end.numero} - ${end.complemento},  ${end.bairro}, ${end.cidade},  ${end.referencia} ',
                          textAlign: TextAlign.end,
                        ),
                      );
                    }),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                  },
                  child: const Text('Cadastrar'),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
