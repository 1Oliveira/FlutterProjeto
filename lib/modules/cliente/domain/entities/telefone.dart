// ignore_for_file: public_member_api_docs, sort_constructors_first

class Telefone {
  final String ddd;
  final String numero;

  Telefone({
    required this.ddd,
    required this.numero,
  });

  Telefone copyWith({
    String? ddd,
    String? numero,
  }) {
    return Telefone(
      ddd: ddd ?? this.ddd,
      numero: numero ?? this.numero,
    );
  }

  factory Telefone.empty() {
    return Telefone(
      ddd: '',
      numero: '',
    );
  }

  @override
  String toString() => 'Telefone(ddd: $ddd, numero: $numero)';

  @override
  bool operator ==(covariant Telefone other) {
    if (identical(this, other)) return true;

    return other.ddd == ddd && other.numero == numero;
  }

  @override
  int get hashCode => ddd.hashCode ^ numero.hashCode;
}
