import 'package:flutter_modular/flutter_modular.dart';
import 'package:servicos/modules/cliente/presenter/pages/cadastrar_cliente_page.dart';

class ClienteModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => const CadastroClientePage());
  }
}
