class Cliente {
  int? id;
  String nome;
  String email;
  String telefone;

  Cliente({this.id, required this.nome, required this.email, required this.telefone});

  /// Converte um mapa (geralmente vindo do banco de dados) em um objeto Cliente.
  factory Cliente.fromMap(Map<String, dynamic> map) {
    return Cliente(
      id: map['id'],
      nome: map['nome'],
      email: map['email'],
      telefone: map['telefone'],
    );
  }

  /// Converte o objeto Cliente em um mapa para ser usado em operações de banco de dados (ex: INSERT).
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'telefone': telefone,
    };
  }
}