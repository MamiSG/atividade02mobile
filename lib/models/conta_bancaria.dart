class ContaBancaria<T> {
  T numeroConta;
  double saldo;

  ContaBancaria(this.numeroConta, [this.saldo = 0.0]);

  void depositar(double valor) {
    if (valor <= 0) {
      throw ArgumentError("O valor de depósito deve ser positivo.");
    }
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= 0) {
      throw ArgumentError("O valor de saque deve ser positivo.");
    }
    if (saldo < valor) {
      throw ArgumentError("Saldo insuficiente.");
    }
    saldo -= valor;
  }

  @override
  String toString() {
    return 'Conta: $numeroConta, Saldo: $saldo';
  }
}
