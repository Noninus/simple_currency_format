import 'package:simple_currency_format/simple_currency_format.dart';

main() {
  print(currencyFormat(10)); //returns R$ 10,00
  print(currencyFormat(12.3)); //returns R$ 12,30
  print(currencyFormat(5, locale: 'en_US', symbol: '\$ ')); //returns $ 5.00

  print(removeZeroDecimal(00500)); //returns 500

  print(maskedCurrencyFormat(5340));
}
