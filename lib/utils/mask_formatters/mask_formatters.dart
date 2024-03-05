import 'package:easy_localization/easy_localization.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

final MaskTextInputFormatter phoneMaskFormatter = MaskTextInputFormatter(
  mask: "(##) ### ## ##",
  filter: {"#": RegExp(r'[0-9]')},
);

final MaskTextInputFormatter uzPhoneMaskFormatter = MaskTextInputFormatter(
  mask: "(##) ### ## ##",
  filter: {"#": RegExp(r'[0-9]')},
);

final MaskTextInputFormatter ruPhoneMaskFormatter = MaskTextInputFormatter(
  mask: "(###) ### ## ##",
  filter: {"#": RegExp(r'[0-9]')},
);

final MaskTextInputFormatter launchPhoneMaskFormatter = MaskTextInputFormatter(
  mask: "##-###-##-##",
  filter: {"#": RegExp(r'[0-9]')},
);

final MaskTextInputFormatter innMaskFormatter = MaskTextInputFormatter(
  mask: "### ### ###",
  filter: {"#": RegExp(r'[0-9]')},
);

final MaskTextInputFormatter vatMaskFormatter = MaskTextInputFormatter(
  mask: "### ### ### ###",
  filter: {"#": RegExp(r'[0-9]')},
);

final MaskTextInputFormatter dateMaskFormatter = MaskTextInputFormatter(
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

final MaskTextInputFormatter paymentAccountMaskFormatter =
    MaskTextInputFormatter(
  mask: "#### #### #### #### ####",
  filter: {"#": RegExp(r'[0-9]')},
);

final moneyMaskFormatter = NumberFormat("#,##0", "uz_UZ");
