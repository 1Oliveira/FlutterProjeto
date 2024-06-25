import 'package:flutter_modular/flutter_modular.dart';
import 'package:servicos/modules/empresa/presenter/pages/cadastro_empresa_page.dart';
import 'package:servicos/modules/empresa/presenter/pages/cadastro_usuario_page.dart';

class EmpresaModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => CadastroEmpresaPage());
    r.child('/usuario', child: (_) => CadastroUsuarioPage());
  }
}
