import 'package:easy_localization/easy_localization.dart';

extension StringMoneyExtension on String {
  String parseToAmount() {
    String amount = doubleMoneyFormatRegex();
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

  String doubleMoneyFormatRegex() {
    String price = "";
    for (var i in runes) {
      var character = String.fromCharCode(i);
      if (character.runes.first >= 48 && character.runes.first <= 57 ||
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
}
