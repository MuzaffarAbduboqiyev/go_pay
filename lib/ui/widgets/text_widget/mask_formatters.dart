import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

final MaskTextInputFormatter phoneMaskFormatter = MaskTextInputFormatter(
  mask: "(##)-###-##-##",
  filter: {"#": RegExp(r'[0-9]')},
);

final MaskTextInputFormatter dateMaskFormatter = MaskTextInputFormatter(
  mask: "##-##-####",
  filter: {"#": RegExp(r'[0-9]')},
);

final MaskTextInputFormatter myIdDateMaskFormatter = MaskTextInputFormatter(
  mask: "##.##.####",
  filter: {"#": RegExp(r'[0-9]')},
);

final MaskTextInputFormatter dateFilterMaskFormatter = MaskTextInputFormatter(
  mask: "##-##-####",
  filter: {"#": RegExp(r'\d')},
);

final MaskTextInputFormatter cardMaskFormatter = MaskTextInputFormatter(
  mask: "####-####-####-####",
  filter: {"#": RegExp(r'[0-9]')},
);

final MaskTextInputFormatter cardExpireMaskFormatter = MaskTextInputFormatter(
  mask: "##/##",
  filter: {"#": RegExp(r'[0-9]')},
);

final moneyMaskFormatter = NumberFormat("#,##0", "uz_UZ");

String passportUnmaskFormatting(String? passportInfo) {
  String regexAmount = (passportInfo ?? "")
      .trim()
      .replaceAll('.', '')
      .replaceAll(',', '')
      .replaceAll('_', '')
      .replaceAll('-', '')
      .replaceAll(' ', '');
  return regexAmount;
}

TextInputFormatter passportFormatting() {
  return TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text.isEmpty) {
      return const TextEditingValue(
          text: "", selection: TextSelection.collapsed(offset: 0));
    }

    if (newValue.text.length < oldValue.text.length) {
      return newValue;
    }

    if (newValue.text.length > 10) {
      return oldValue;
    }

    if (newValue.text.length < 3) {
      if (newValue.text.length == 2) {
        return TextEditingValue(
          text: "${newValue.text.toUpperCase()}-",
          selection: TextSelection.collapsed(offset: newValue.text.length + 1),
        );
      } else if (!isInteger(newValue.text[newValue.text.length - 1]) &&
          containsOnlyAlphabets(newValue.text[newValue.text.length - 1])) {
        return TextEditingValue(
          text: oldValue.text +
              newValue.text[newValue.text.length - 1].toUpperCase(),
          selection: TextSelection.collapsed(offset: newValue.text.length),
        );
      }
      return oldValue;
    }

    if (newValue.text.length == 3) {
      return TextEditingValue(
        text: newValue.text,
        selection: TextSelection.collapsed(offset: newValue.text.length),
      );
    }

    if (newValue.text.length > 3 &&
        isInteger(newValue.text[newValue.text.length - 1])) {
      return TextEditingValue(
        text: oldValue.text + newValue.text[newValue.text.length - 1],
        selection: TextSelection.collapsed(offset: newValue.text.length),
      );
    }

    return TextEditingValue(
        text: oldValue.text,
        selection: TextSelection.collapsed(offset: oldValue.text.length));
  });
}

bool isInteger(String input) {
  // Attempt to parse the string as an integer
  int? parsedInt = int.tryParse(input);

  // Check if parsing was successful and if the parsed value matches the original string
  return parsedInt != null && parsedInt.toString() == input;
}

bool containsOnlyAlphabets(String input) {
  RegExp regex = RegExp(r'^[A-Za-z]+$');
  return regex.hasMatch(input);
}
