import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_pay/model/monitoring_model/monitoring_model.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/extensions/date_extension/date_to_string_extension.dart';
import 'package:go_pay/utils/extensions/date_extension/string_to_date_extension.dart';
import 'package:go_pay/utils/extensions/money_extension/money_format_extension.dart';
import 'package:go_pay/utils/mask_formatters/mask_formatters.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class MonitoringItem extends StatefulWidget {
  final MonitoringModel monitoringModel;

  const MonitoringItem({
    super.key,
    required this.monitoringModel,
  });

  @override
  State<MonitoringItem> createState() => _MonitoringItemState();
}

class _MonitoringItemState extends State<MonitoringItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _item(
            "monitoring.receiver".translate,
            cardMaskFormatter.maskText(
              widget.monitoringModel.cardNumber,
            ),
          ),
          verticalBox(verticalSize: 8),
          _item(
            "monitoring.amount".translate,
            widget.monitoringModel.amount.toString().parseToAmountString(),
          ),
          verticalBox(verticalSize: 8),
          _item(
            "monitoring.date".translate,
            widget.monitoringModel.createdAt
                .parseToDateTime()
                .parseToDayYearNumber(),
          ),
        ],
      ),
    );
  }

  Widget _item(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            "$title:",
            style: context.labelLarge(),
            textAlign: TextAlign.start,
          ),
        ),
        horizontalBox(horizontalSize: 16),
        Expanded(
          child: Text(
            value,
            style: context.labelLarge(),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
