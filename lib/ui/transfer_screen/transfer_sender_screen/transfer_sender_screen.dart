import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class TransferSenderScreen extends StatefulWidget {
  const TransferSenderScreen({super.key});

  @override
  State<TransferSenderScreen> createState() => _TransferSenderScreenState();
}

class _TransferSenderScreenState extends State<TransferSenderScreen>
    with AppbarWidget, SvgImageWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackgroundColor,
      appBar: simpleAppBar(
        type: AppbarType.withBack,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ),
      ),
    );
  }

  Widget get _title => Text(
        "transfer.sender_title".translate,
        style: context.titleSmall(),
      );
}
