import 'package:rx_notifier/rx_notifier.dart';
import 'package:servicos/modules/cliente/domain/entities/telefone.dart';

class TelefoneFormController {
  final RxNotifier _telefone;

  TelefoneFormController({required Telefone telefone})
      : _telefone = RxNotifier(telefone);

  Telefone get telefone => _telefone.value;
  set telefone(Telefone value) => _telefone.value = value;
}
