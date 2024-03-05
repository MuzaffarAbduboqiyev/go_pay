import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:go_pay/utils/extensions/money_extension/string_money_extension.dart';

extension MoneyFormatExtension on String {
  double parseToAmountDouble() {
    if (isEmpty) return 0;
    String amount = _doubleMoneyFormatRegex();
    return double.parse(amount);
  }

  int parseToAmountInt() {
    if (isEmpty) return 0;
    String amount = _intMoneyFormatRegex();
    return int.parse(amount);
  }

  String parseToAmountString() {
    String amount = _doubleMoneyFormatRegex();
    String subAmount = "";
    final int firstDot = amount.indexOf(".");
    final int lastDot = amount.lastIndexOf(".");
    if (firstDot < lastDot) {
      amount = amount.substring(0, lastDot);
    }

    if (amount.isNotEmpty) {
      if (amount.contains(".")) {
        subAmount = amount.substring(firstDot, amount.length);
        if (subAmount.length > 4) {
          subAmount = subAmount.substring(0, 4);
        }
        amount = amount.substring(0, firstDot);
      }
      amount = NumberFormat('#,##0').format(
        int.parse(amount),
      );

      amount += subAmount;
    }

    return amount;
  }

  String _doubleMoneyFormatRegex() {
    String price = "";
    for (var i in runes) {
      var character = String.fromCharCode(i);
      if ((character.runes.first >= 48 && character.runes.first <= 57) ||
          character == '.') {
        price += character;
      }
    }

    String regexAmount = price
      ..trim()
      ..replaceAll(',', '')
      ..replaceAll('_', '')
      ..replaceAll('-', '')
      ..replaceAll(' ', '');
    return regexAmount;
  }

  String _intMoneyFormatRegex() {
    String price = "";
    if (isEmpty) return "";
    for (var i in runes) {
      var character = String.fromCharCode(i);
      if (character.runes.first >= 48 && character.runes.first <= 57) {
        price += character;
      }
    }
    String regexAmount = price
        .trim()
        .replaceAll('.', '')
        .replaceAll(',', '')
        .replaceAll('_', '')
        .replaceAll('-', '')
        .replaceAll(' ', '');
    return regexAmount;
  }
}

TextInputFormatter moneyFormatting() {
  return TextInputFormatter.withFunction((oldValue, newValue) {
    String amount = newValue.text.doubleMoneyFormatRegex();
    int cursorPosition = amount.length;
    if (amount.isNotEmpty) {
      amount = NumberFormat('###,###').format(
        int.parse(amount),
      );
      cursorPosition = amount.length;
    }
    return TextEditingValue(
        text: amount,
        selection: TextSelection.collapsed(offset: cursorPosition));
  });
}

TextInputFormatter doubleMoneyFormatting() {
  return TextInputFormatter.withFunction((oldValue, newValue) {
    String amount = newValue.text.parseToAmount();
    int cursorPosition = amount.length;
    return TextEditingValue(
      text: amount,
      selection: TextSelection.collapsed(offset: cursorPosition),
    );
  });
}
