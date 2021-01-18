import 'package:intl/intl.dart';

currencyFormat(num value, {String locale: "pt_BR", String symbol: "R\$"}) {
  if (value != null) {
    NumberFormat reais = NumberFormat.currency(locale: locale, symbol: symbol);
    return reais.format(value);
  }
}

String removeZeroDecimal(n) {
  return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 2);
}
