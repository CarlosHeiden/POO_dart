//Crie uma classe abstrata `Pagamento` com o método `processarPagamento()`. 
//Implemente as classes `PagamentoBoleto` e `PagamentoCartao` que sobrescrevem esse método.

abstract class Pagamento {
  void processarPagamento();
}


class PagamentoBoleto implements Pagamento {
  String codigoBarras;
  double valor;

  PagamentoBoleto(this.codigoBarras, this.valor);

  @override
  void processarPagamento() {
    print('Processando pagamento via Boleto:');
    print('Código de Barras: $codigoBarras');
    print('Valor: R\$ $valor');
    // Lógica específica para processar boleto

  }
}

  class PagamentoCartao implements Pagamento {
  String numeroCartao;
  double valor;

  PagamentoCartao(this.numeroCartao, this.valor);

  @override
  void processarPagamento() {
    print('Processando pagamento via Cartão:');
    print('Número do Cartão: $numeroCartao');
    print('Valor: R\$ $valor');
    // Lógica específica para processar cartão
    
  }
  
}

void main() {
  Pagamento pagamentoBoleto = PagamentoBoleto('123456789012', 150.75);
  pagamentoBoleto.processarPagamento();

  Pagamento pagamentoCartao = PagamentoCartao('4111111111111111', 250.00);
  pagamentoCartao.processarPagamento();
}