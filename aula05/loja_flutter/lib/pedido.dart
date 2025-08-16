class Pedido {
  int? id;
  DateTime data;
  double valorTotal;
  int idCliente; // Chave estrangeira para o cliente

  Pedido({
    this.id,
    required this.data,
    required this.valorTotal,
    required this.idCliente,
  });

  /// Converte um mapa (do banco de dados) em um objeto Pedido.
  factory Pedido.fromMap(Map<String, dynamic> map) {
    return Pedido(
      id: map['id'],
      data: DateTime.parse(map['data']),
      valorTotal: map['valor_total'],
      idCliente: map['id_cliente'],
    );
  }
}
