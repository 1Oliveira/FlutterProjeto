// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/foundation.dart';
import 'package:servicos/modules/cliente/domain/entities/endereco.dart';
import 'package:servicos/modules/cliente/domain/entities/telefone.dart';

class Cliente {
  final String nome;
  final String cpf;
  final String email;
  final List<Telefone> telefones;
  final List<Endereco> enderecos;
  Cliente({
    required this.nome,
    required this.cpf,
    required this.email,
    required this.telefones,
    required this.enderecos,
  });

  Cliente copyWith({
    String? nome,
    String? cpf,
    String? email,
    List<Telefone>? telefones,
    List<Endereco>? enderecos,
  }) {
    return Cliente(
      nome: nome ?? this.nome,
      cpf: cpf ?? this.cpf,
      email: email ?? this.email,
      telefones: telefones ?? this.telefones,
      enderecos: enderecos ?? this.enderecos,
    );
  }

  factory Cliente.empty() {
    return Cliente(
      nome: '',
      cpf: '',
      email: '',
      telefones: [Telefone.empty()],
      enderecos: [Endereco.empty()],
    );
  }

  @override
  String toString() {
    return 'Cliente(nome: $nome, cpf: $cpf, telefones: $telefones, enderecos: $enderecos, email: $email)';
  }

  @override
  bool operator ==(covariant Cliente other) {
    if (identical(this, other)) return true;

    return other.nome == nome &&
        other.cpf == cpf &&
        other.email == email &&
        listEquals(other.telefones, telefones) &&
        listEquals(other.enderecos, enderecos);
  }

  @override
  int get hashCode {
    return nome.hashCode ^
        cpf.hashCode ^
        email.hashCode ^
        telefones.hashCode ^
        enderecos.hashCode;
  }
}
