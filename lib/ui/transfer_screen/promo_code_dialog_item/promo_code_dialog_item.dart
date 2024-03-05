import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/buttons/button_widget.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/ui/widgets/text_field_widget/text_field_widget.dart';
import 'package:go_pay/utils/mask_formatters/mask_formatters.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class PromoCodeDialogItem extends StatefulWidget {
  const PromoCodeDialogItem({super.key});

  @override
  State<PromoCodeDialogItem> createState() => _PromoCodeDialogItemState();
}

class _PromoCodeDialogItemState extends State<PromoCodeDialogItem> {
  final TextEditingController _cardNumberController = TextEditingController();

  _confirmButton() {}

  _closeButton() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      verticalDirection: VerticalDirection.up,
      children: [
        _confirmButtonWidget(),
        AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          surfaceTintColor: backgroundColor,
          contentPadding: const EdgeInsets.all(16),
          iconPadding: const EdgeInsets.all(16),
          insetPadding: const EdgeInsets.symmetric(horizontal: 16),
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "promo_code.promo_code".translate,
                      style: context.titleSmall(),
                    ),
                    InkWell(
                      onTap: _closeButton,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.close,
                          color: hintColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalBox(verticalSize: 8),
                Text(
                  "promo_code.add_promo".translate,
                  style: context.labelLarge(),
                ),
                verticalBox(verticalSize: 32),
                TextFieldWidget(
                  fillColor: cardColor,
                  textController: _cardNumberController,
                  hintText: "promo_code.add_card".translate,
                  inputFormatters: [vatMaskFormatter],
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// _confirmButtonWidget
  Widget _confirmButtonWidget() => Padding(
        padding: const EdgeInsets.all(16.0),
        child: ContinueButton(
          onClick: _confirmButton,
          title: "promo_code.confirm".translate,
        ),
      );
}
