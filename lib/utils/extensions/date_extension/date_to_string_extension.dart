import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

extension DateToStringExtension on DateTime {
  String parseToDateTime() => DateFormat("yyyy-MM-ddTHH:mm:ss").format(this);

  String parseToWeekDay({
    required BuildContext context,
  }) =>
      Intl.withLocale(
          context.locale.languageCode.toString(),
          () => DateFormat.MMMMEEEEd(context.locale.toStringWithSeparator())
              .format(this));

  String parseToDayYear({
    required BuildContext context,
  }) =>
      Intl.withLocale(
          context.locale.languageCode.toString(),
          () => DateFormat.yMMMd(context.locale.toStringWithSeparator())
              .format(this));

  String parseToDayYearNumber() =>
      DateFormat("dd.MM.yyyy").format(this);

  String parseToDaily({
    required BuildContext context,
  }) => DateFormat.yMMMd(context.locale.toStringWithSeparator().toString()).format(this);



  String parseToTime() => DateFormat("HH:mm").format(this);

  String parseToFilterFormat() => DateFormat("yyyy-MM-dd").format(this);

  String parseToAttendanceSubmit() =>
      DateFormat("yyyy-MM-dd HH:mm:ss").format(this);

  String parseToDailyRu({
    required BuildContext context,
  }){
    return Intl.withLocale(context.locale.languageCode.toString(), () => DateFormat.yMMMEd(context.locale.toStringWithSeparator()).format(this));
  }

  String parseToDailyChart({
    required BuildContext context,
  }){
    return Intl.withLocale(context.locale.languageCode.toString(), () => DateFormat.MMMd(context.locale.toStringWithSeparator()).format(this));
  }



  bool arriveOnTime() => compareTo(_arriveTime) == 1;

  bool isOnTime() => compareTo(_arriveTime) == -1;
  bool isLate() => compareTo(_arriveTime) == 1;

  bool wentOnTime() => compareTo(_wentTime) == -1;

  String parseToTimeHours() => DateFormat("HH").format(this);
  String parseToTimeMinutes() => DateFormat("mm").format(this);

  DateTime get _arriveTime => copyWith(
        hour: 9,
        minute: 01,
      );

  DateTime get _wentTime => copyWith(
        hour: 17,
        minute: 59,
      );
}