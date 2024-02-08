import 'package:easy_localization/easy_localization.dart';

extension TranslateExtension on String {
  String get translate => _translate(this);

  String _translate(String? word) {
    if (word != null) {
      return word.tr();
    } else {
      return "";
    }
  }
}
