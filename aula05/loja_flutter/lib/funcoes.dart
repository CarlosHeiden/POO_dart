import 'package:loja_flutter/coneccao_mysql.dart'; // Importe a função connectToDatabase
import 'package:loja_flutter/cliente.dart'; // Importe sua classe Cliente
import 'package:loja_flutter/pedido.dart'; // Importe sua classe Pedido

// Função principal que insere um cliente
Future<void> inserirCliente(Cliente cliente) async {
  final conn = await connectToDatabase();
  
  if (conn == null) {
    print('Não foi possível inserir o cliente. Conexão falhou.');
    return;
  }

  try {
    await conn.execute(
      'INSERT INTO clientes (nome, email, telefone) VALUES (:nome, :email, :telefone)',
      {
        'nome': cliente.nome,
        'email': cliente.email,
        'telefone': cliente.telefone,
      },
    );
    print('Cliente ${cliente.nome} inserido com sucesso!');
  } catch (e) {
    print('Erro ao inserir cliente: $e');
  } finally {
    // A conexão é fechada aqui, independentemente do resultado
    await conn.close();
    print('Conexão com o banco de dados encerrada.');
  }
}

// O seu main() agora fica mais limpo e direto
void main() async {
  // Exemplo de uso da função
  final novoCliente = Cliente(nome: 'João da Silva', email: 'joao@teste.com', telefone: '11999998888');
  await inserirCliente(novoCliente);
}

// Função principal que insere um pedido
Future<void> inserirPedido(Pedido pedido) async {
  final conn = await connectToDatabase();
  
  if (conn == null) {
    print('Não foi possível inserir o pedido. Conexão falhou.');
    return;
  }

  try {
    await conn.execute(
      'INSERT INTO pedidos (data, valor_total, id_cliente) VALUES (:data, :valor_total, :id_cliente)',
      {
        'data': pedido.data,
        'valor_total': pedido.valorTotal,
        'id_cliente': pedido.idCliente,
      },
    );
    print('Pedido para o cliente com ID ${pedido.idCliente} inserido com sucesso!');
  } catch (e) {
    print('Erro ao inserir pedido: $e');
  } finally {
    await conn.close();
    print('Conexão com o banco de dados encerrada.');
  }
}

/// Lista todos os pedidos, mostrando o nome do cliente ao invés do ID.
Future<void> listarPedidosComClientes() async {
  final conn = await connectToDatabase();
  
  if (conn == null) {
    print('Não foi possível listar os pedidos. Conexão falhou.');
    return;
  }

  try {
    // A consulta usa JOIN para combinar as informações das duas tabelas
    final results = await conn.execute(
      'SELECT p.id, p.data, p.valor_total, c.nome '
      'FROM pedidos p '
      'JOIN clientes c ON p.id_cliente = c.id '
      'ORDER BY p.data DESC',
    );
    
    
    // Itera sobre os resultados e exibe de forma formatada
    for (var row in results.rows) {
      final pedidoId = row.assoc()['id'];
      final data = row.assoc()['data'].toString().substring(0, 10);
      final valorTotal = double.parse(row.assoc()['valor_total'].toString()).toStringAsFixed(2);
      final clienteNome = row.assoc()['nome'];
      
      
      print('Id: $pedidoId, Data: $data, Valor Total: R\$ $valorTotal, Cliente: $clienteNome'); // Exibe os detalhes do pedido
    }

  } catch (e) {
    print('Erro ao consultar pedidos: $e');
  } finally {
    await conn.close();
    print('Conexão com o banco de dados encerrada.');
  }
}

/// Resumo de pedidos por cliente, mostrando o total gasto e a quantidade de pedidos.
Future<void> resumoPedidosPorCliente() async {
  final conn = await connectToDatabase();
  
  if (conn == null) {
    print('Não foi possível gerar o resumo. Conexão falhou.');
    return;
  }

  try {
    final results = await conn.execute(
      'SELECT c.nome, COUNT(p.id) AS total_pedidos, SUM(p.valor_total) AS total_gasto '
      'FROM clientes c '
      'LEFT JOIN pedidos p ON c.id = p.id_cliente '
      'GROUP BY c.id '
      'ORDER BY total_gasto DESC',
    );
    
    print('\n--- Resumo de Pedidos por Cliente ---');
    print('Nome do Cliente      | Total Pedidos | Total Gasto');
    print('----------------------------------------------------');
    
    // Itera sobre os resultados
    for (var row in results.rows) {
      final clienteNome = row.assoc()['nome'];
      final totalPedidos = row.assoc()['total_pedidos'];
      final totalGasto = row.assoc()['total_gasto'];
      
      // O valor gasto pode ser null se o cliente não tiver pedidos.
      final valorFormatado = totalGasto != null 
          ? 'R\$ ${double.parse(totalGasto.toString()).toStringAsFixed(2)}'
          : 'R\$ 0.00';
          
      print('${clienteNome.toString().padRight(20)} | ${totalPedidos.toString().padRight(13)} | ${valorFormatado}');
    }

  } catch (e) {
    print('Erro ao gerar o resumo de pedidos: $e');
  } finally {
    await conn.close();
    print('Conexão com o banco de dados encerrada.');
  }
}

//listar clientes ordenados por nome
Future<void> listarClientesOrdenadosPorNome() async {
  final conn = await connectToDatabase();
  
  if (conn == null) {
    print('Não foi possível listar os clientes. Conexão falhou.');
    return;
  }

  try {
    final results = await conn.execute(
      'SELECT id, nome, email, telefone FROM clientes ORDER BY nome',
    );
    
    print('\n--- Lista de Clientes ---');
    for (var row in results.rows) {
      final id = row.assoc()['id'];
      final nome = row.assoc()['nome'];
      final email = row.assoc()['email'];
      final telefone = row.assoc()['telefone'];
      
      print('ID: $id, Nome: $nome, Email: $email, Telefone: $telefone');
    }

  } catch (e) {
    print('Erro ao listar clientes: $e');
  } finally {
    await conn.close();
    print('Conexão com o banco de dados encerrada.');
  }
}