import 'package:flutter_modular/flutter_modular.dart';
import 'package:servicos/modules/cliente/domain/entities/cliente.dart';
import 'package:servicos/modules/cliente/domain/entities/endereco.dart';
import 'package:servicos/modules/cliente/domain/entities/telefone.dart';
import 'package:servicos/modules/cliente/domain/enums/tipo_telefone.dart';
import 'package:servicos/modules/cliente/presenter/pages/cadastrar_cliente_page.dart';

class ClienteModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/',
        child: (_) => CadastroClientePage(
              cliente: Cliente.empty().copyWith(telefones: [
                Telefone(
                    ddd: "21", numero: "1111-1122", tipo: TipoTelefone.celular)
              ], enderecos: [
                Endereco(
                  logradouro: "Rua dos prazeres",
                  cidade: "Porto velho",
                  bairro: "Cidade baixa",
                  complemento: "LT 20 QD d1",
                  numero: "122",
                  referencia: "Casa cinza",
                )
              ]),
            ));
  }
}
