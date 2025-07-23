import 'dart:io';

void main() {
  // Dados recebidos (alguns podem ser nulos)
  String? nomeRecebido = 'João da Silva';
  String? emailRecebido = 'usuario@email.com';
  String? telefoneRecebido;

  // Usando coalescência nula para definir valores padrão
  String nome = nomeRecebido ?? 'Nome não informado';
  String email = emailRecebido ?? 'Email não informado';
  String telefone = telefoneRecebido ?? 'Telefone não informado';

  Usuario usuario = Usuario(nome: nome, email: email, telefone: telefone);

  print('Cadastro realizado:');
  print(usuario);
}

class Usuario {
  String nome;
  String email;
  String telefone;

  Usuario({required this.nome, required this.email, required this.telefone});

  @override
  String toString() {
    return 'Nome: $nome\nEmail: $email\nTelefone: $telefone';
  }
}
