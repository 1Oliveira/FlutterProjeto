// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:servicos/modules/cliente/domain/enums/tipo_telefone.dart';

class Telefone {
  final String ddd;
  final String numero;
  final TipoTelefone tipo;

  Telefone({
    required this.ddd,
    required this.numero,
    required this.tipo,
  });

  factory Telefone.empty() {
    return Telefone(
      ddd: '',
      numero: '',
      tipo: TipoTelefone.naoSelecionado,
    );
  }

  Telefone copyWith({
    String? ddd,
    String? numero,
    String? contato,
    TipoTelefone? tipo,
  }) {
    return Telefone(
      ddd: ddd ?? this.ddd,
      numero: numero ?? this.numero,
      tipo: tipo ?? this.tipo,
    );
  }

  @override
  String toString() {
    return 'Telefone(ddd: $ddd, numero: $numero, tipo: $tipo)';
  }

  @override
  bool operator ==(covariant Telefone other) {
    if (identical(this, other)) return true;

    return other.ddd == ddd && other.numero == numero && other.tipo == tipo;
  }

  @override
  int get hashCode {
    return ddd.hashCode ^ numero.hashCode ^ tipo.hashCode;
  }
}
