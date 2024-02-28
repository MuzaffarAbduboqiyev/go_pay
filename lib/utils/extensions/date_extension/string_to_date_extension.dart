import 'package:easy_localization/easy_localization.dart';
import 'package:go_pay/utils/extensions/date_extension/date_to_string_extension.dart';

extension StringToDateExtensions on String {
  DateTime parseToDateTime() => DateFormat("yyyy-MM-ddTHH:mm:ss").parse(this);

  DateTime parseToFilterDate() => DateFormat("yyyy-MM-dd").parse(this);

  String addFiveHour() => isNotEmpty
      ? parseToDateTime().add(const Duration(hours: 5)).parseToDateTime()
      : "";
}
