import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';
import 'package:timer_builder/timer_builder.dart';

class OtpTimerItem extends StatefulWidget {

  const OtpTimerItem({
    super.key,
  });

  @override
  State<OtpTimerItem> createState() => _OtpTimerItemState();
}

class _OtpTimerItemState extends State<OtpTimerItem> {
  late DateTime dateTime;
  final int timerId = 120;

  _formatDuration(Duration duration) {
    String f(int n) {
      return n.toString().padLeft(2, "0");
    }

    duration += const Duration(microseconds: 999999);
    return "${f(duration.inMinutes)}:${f(duration.inSeconds % 60)}";
  }

  _buttonResend() {
    setState(() {
      dateTime = DateTime.now().add(Duration(seconds: timerId));
    });
  }

  @override
  void initState() {
    dateTime = DateTime.now().add(Duration(seconds: timerId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TimerBuilder.scheduled(
      [dateTime],
      builder: (context) {
        var now = DateTime.now();
        var reached = now.compareTo(dateTime) >= 0;
        return !reached
            ? timerBuilderWidget
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(),
                  resendTitleWidget,
                ],
              );
      },
    );
  }

  /// otp timerBuilder Widget
  Widget get timerBuilderWidget =>
      TimerBuilder.periodic(const Duration(seconds: 1),
          alignment: Duration.zero, builder: (context) {
        var now = DateTime.now();
        var remaining = dateTime.difference(now);
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.schedule,
              color: hintColor,
              size: 22,
            ),
            horizontalBox(horizontalSize: 8),
            Text(
              _formatDuration(remaining),
              style: context.labelLarge(),
            ),
          ],
        );
      });

  /// otp resend widget
  Widget get resendTitleWidget => InkWell(
        onTap: _buttonResend,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.refresh,
              color: buttonColor,
              size: 22,
            ),
            Text(
              "otp.resend".translate,
              style: context.labelLarge().copyWith(color: buttonColor),
              maxLines: 1,
            ),
          ],
        ),
      );
}
