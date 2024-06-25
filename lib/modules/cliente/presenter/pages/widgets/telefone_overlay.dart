import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';
import 'package:servicos/core/widgets/page_overlay.dart';
import 'package:servicos/modules/cliente/domain/entities/telefone.dart';
import 'package:servicos/modules/cliente/domain/enums/tipo_telefone.dart';
import 'package:servicos/modules/cliente/presenter/controllers/telefone_form_controller.dart';

class TelefoneWidget extends PageOverlay {
  final TelefoneFormController telefoneFormController;

  Telefone get telefone => telefoneFormController.telefone;
  set telefone(Telefone value) {
    telefoneFormController.telefone = value;
  }

  TelefoneWidget({required final Telefone telefone})
      : telefoneFormController = TelefoneFormController(telefone: telefone);

  @override
  Widget buildOverlay(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2;
    double height = MediaQuery.of(context).size.height / 2;
    return RxBuilder(builder: (context) {
      return Center(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2.0, color: Colors.black26))),
                height: (height / 16) * 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: (height / 16) * 11,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Tipo de telefone"),
                                DropdownButton<TipoTelefone>(
                                    items: TipoTelefone.values
                                        .map((el) =>
                                            DropdownMenuItem<TipoTelefone>(
                                                value: el,
                                                child: Text(el.label)))
                                        .toList(),
                                    value: telefone.tipo,
                                    onChanged: (TipoTelefone? newValue) =>
                                        telefone =
                                            telefone.copyWith(tipo: newValue)),
                              ],
                            )
                          ]),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: TextFormField(
                              initialValue: telefone.ddd,
                              decoration: InputDecoration(label: Text("DDD")),
                              onChanged: (value) =>
                                  telefone = telefone.copyWith(ddd: value),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: TextFormField(
                              initialValue: telefone.numero,
                              decoration:
                                  InputDecoration(label: Text("Número")),
                              onChanged: (value) =>
                                  telefone = telefone.copyWith(numero: value),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: (height / 16) * 3,
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.black26, width: 2.0))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("OK"))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
