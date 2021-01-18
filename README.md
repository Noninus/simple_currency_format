# simple_currency_format

A simple API to format currency values.
As pattern, the package use pt_BR locale and R$ symbol.


## Usage

Use `currencyFormat` function to format a `num`

```dart
print(currencyFormat(10));
```

Output:

> R$ 10,00


Use `removeZeroDecimal` function to format a `num`

```dart
print(removeZeroDecimal(0500));
```

Output:

> 500
# simple_currency_format
