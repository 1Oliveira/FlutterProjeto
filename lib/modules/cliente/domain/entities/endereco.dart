class Endereco {
  final String logradouro;
  final String cidade;
  final String bairro;
  final String complemento;
  final String numero;
  final String referencia;
  Endereco({
    required this.logradouro,
    required this.cidade,
    required this.bairro,
    required this.complemento,
    required this.numero,
    required this.referencia,
  });

  Endereco copyWith({
    String? logradouro,
    String? cidade,
    String? bairro,
    String? complemento,
    String? numero,
    String? referencia,
  }) {
    return Endereco(
      logradouro: logradouro ?? this.logradouro,
      cidade: cidade ?? this.cidade,
      bairro: bairro ?? this.bairro,
      complemento: complemento ?? this.complemento,
      numero: numero ?? this.numero,
      referencia: referencia ?? this.referencia,
    );
  }

  factory Endereco.empty() {
    return Endereco(
      logradouro: '',
      cidade: '',
      bairro: '',
      complemento: '',
      numero: '',
      referencia: '',
    );
  }

  @override
  String toString() {
    return 'Endereco(logradouro: $logradouro, cidade: $cidade, bairro: $bairro, complemento: $complemento, numero: $numero, referencia: $referencia)';
  }

  @override
  bool operator ==(covariant Endereco other) {
    if (identical(this, other)) return true;

    return other.logradouro == logradouro &&
        other.cidade == cidade &&
        other.bairro == bairro &&
        other.complemento == complemento &&
        other.numero == numero &&
        other.referencia == referencia;
  }

  @override
  int get hashCode {
    return logradouro.hashCode ^
        cidade.hashCode ^
        bairro.hashCode ^
        complemento.hashCode ^
        numero.hashCode ^
        referencia.hashCode;
  }
}
