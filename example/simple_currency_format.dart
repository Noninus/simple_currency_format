import 'package:simple_currency_format/simple_currency_format.dart';

main() {
  print(currencyFormat(10));
  print(currencyFormat(12.3));
  print(currencyFormat(5, locale: 'en_US', symbol: '\$ '));

  print(removeZeroDecimal(00500));
}
