import 'package:flutter_test/flutter_test.dart';

import 'package:simple_currency_format/simple_currency_format.dart';

const intlWhiteSpace = '\xa0';
void main() {
  test('convert 10 to BRL locale currency', () {
    String currency = currencyFormat(10);
    expect(currency, 'R\$' + intlWhiteSpace + '10,00');
  });

  test('convert 12.30 to BRL locale currency', () {
    String currency = currencyFormat(12.30);
    expect(currency, 'R\$' + intlWhiteSpace + '12,30');
  });

  test('convert 12.30 to en_US locale currency', () {
    String currency = currencyFormat(5, locale: 'en_US', symbol: '\$ ');
    expect(currency, '\$ 5.00');
  });

  test('remove zero decimal', () {
    String currency = removeZeroDecimal(00500);
    expect(currency, '500');
  });
}
