import 'package:intl/intl.dart';

/// Outputs num as currency format
///
/// Example:
///     currencyFormat(10);
///     // => R$ 10,00
currencyFormat(num value, {String locale: "pt_BR", String symbol: "R\$"}) {
  NumberFormat reais = NumberFormat.currency(locale: locale, symbol: symbol);
  return reais.format(value);
}

/// Outputs num with zero decimal removed
///
/// Example:
///     removeZeroDecimal(0500);
///     // => 500
String removeZeroDecimal(n) {
  return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 2);
}

/// Outputs num formated to show in a text
///
/// Example:
///     removeZeroDecimal(12);
///     => R$ 0,12
///  Example:
///     removeZeroDecimal(1254);
///     => R$ 12,54
String maskedCurrencyFormat(n, {String locale = "pt_br"}) {
  final formatCurrency = NumberFormat.simpleCurrency(locale: locale);
  return formatCurrency.format(n / 100);
}
