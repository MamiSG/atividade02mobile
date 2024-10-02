import 'package:test/test.dart';
import 'package:atividade2/models/conta_bancaria.dart';

void main() {
  group('ContaBancaria', () {
    test('Depositar dinheiro na conta', () {
      final conta = ContaBancaria<int>(12345, 100.0);
      conta.depositar(50.0);
      expect(conta.saldo, equals(150.0));
    });

    test('Sacar dinheiro da conta', () {
      final conta = ContaBancaria<int>(12345, 200.0);
      conta.sacar(50.0);
      expect(conta.saldo, equals(150.0));
    });

    test('Saque deve lançar erro se o saldo for insuficiente', () {
      final conta = ContaBancaria<int>(12345, 100.0);
      expect(() => conta.sacar(200.0), throwsArgumentError);
    });

    test('Depósito deve lançar erro se o valor for negativo', () {
      final conta = ContaBancaria<int>(12345, 100.0);
      expect(() => conta.depositar(-50.0), throwsArgumentError);
    });
  });
}
