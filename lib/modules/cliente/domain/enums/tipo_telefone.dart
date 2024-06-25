import 'package:servicos/modules/cliente/presenter/controllers/telefone_form_controller.dart';

enum TipoTelefone {
  celular("Celular"),
  fixo("Fixo"),
  comercial("Comercial"),
  naoSelecionado("Não selecionado");

  final String label;

  const TipoTelefone(this.label);
}
