import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:servicos/modules/cliente/cliente_module.dart';
import 'package:servicos/modules/empresa/empresa_module.dart';
import 'package:servicos/modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r //
      ..module('/', module: HomeModule())
      ..module('/cliente', module: ClienteModule())
      ..module('/empresa', module: EmpresaModule());
  }
}

// class LoginGuard extends RouteGuard {
//   LoginGuard() : super(redirectTo: '/login/');

//   @override
//   FutureOr<bool> canActivate(String path, ParallelRoute route) async {
//     return true;
//   }
// }
