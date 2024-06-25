import 'package:rx_notifier/rx_notifier.dart';
import 'package:servicos/modules/cliente/domain/entities/cliente.dart';

class ClienteFormController {
  final RxNotifier _cliente;

  ClienteFormController({Cliente? cliente})
      : _cliente = RxNotifier(cliente ?? Cliente.empty());

  Cliente get cliente => _cliente.value;
  set cliente(Cliente value) => _cliente.value = value;
}
