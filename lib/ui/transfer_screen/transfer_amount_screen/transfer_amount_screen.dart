import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pay/controller/transfer_controller/amount_controller/amount_bloc.dart';
import 'package:go_pay/controller/transfer_controller/amount_controller/amount_event.dart';
import 'package:go_pay/controller/transfer_controller/amount_controller/amount_state.dart';
import 'package:go_pay/ui/transfer_screen/transfer_check_dialog_item/transfer_check_dialog_item.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/buttons/button_widget.dart';
import 'package:go_pay/ui/widgets/dialog/snack_bar.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/shimmer/base/shimmer_item.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/extensions/money_extension/money_format_extension.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class TransferAmountScreen extends StatefulWidget {
  final String receiverCard;
  final String receiverName;

  const TransferAmountScreen({
    super.key,
    required this.receiverCard,
    required this.receiverName,
  });

  @override
  State<TransferAmountScreen> createState() => _TransferAmountScreenState();
}

class _TransferAmountScreenState extends State<TransferAmountScreen>
    with AppbarWidget, SvgImageWidget {
  final TextEditingController _payTextController = TextEditingController();

  _notificationsIconButton() {}

  _personIconButton() {}

  _pushPromoCodeButton() {
    showDialog(
      context: context,
      builder: (context) => const TransferCheckDialogItem(),
    );
  }

  void _createTransfer() {
    if (_payTextController.text.isEmpty) {
      context.showSnackBar("error.empty_amount".translate);
      return;
    }

    if (context.read<AmountBloc>().state.commissionModel == null) {
      context.showSnackBar("error.commission_not_found".translate);
      return;
    }

    if (context.read<AmountBloc>().state.amount <
        (context.read<AmountBloc>().state.commissionModel?.min ?? 0.0)) {
      context.showSnackBar(
          "${"error.min_price".translate} ${(context.read<AmountBloc>().state.commissionModel?.min ?? 0.0).toString().parseToAmountString()} UZS");
      return;
    }

    context.read<AmountBloc>().add(
          const AmountEvent.sendAmount(),
        );
  }

  @override
  void initState() {
    super.initState();
    context.read<AmountBloc>().add(
          AmountEvent.initial(
            receiverCard: widget.receiverCard,
            receiverName: widget.receiverName,
          ),
        );
    context.read<AmountBloc>().add(const AmountEvent.getCommission());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      appBar: actionsAppBar(
          backgroundColor: backgroundColor,
          type: AppbarType.withBack,
          actions: [
            _notificationsIconWidget(),
            _personIconWidget(),
          ]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title,
            verticalBox(verticalSize: 12),
            _senderAmount,
            verticalBox(verticalSize: 8),
            _receiverAmount,
            verticalBox(verticalSize: 8),
            _promoCode,
            verticalBox(verticalSize: 100),
            _rate,
            verticalBox(verticalSize: 16),
            _continueButton,
          ],
        ),
      ),
    );
  }

  /// _transferWidget
  Widget get _title => Text(
        "transfer.transfer".translate,
        style: context.titleSmall().copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
      );

  /// _textFieldCardWidget
  Widget get _senderAmount => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalBox(verticalSize: 16),
            Text(
              "transfer.you_pay".translate,
              style: context.labelLarge().copyWith(fontSize: 16),
            ),
            verticalBox(verticalSize: 8),
            TextFormField(
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
                signed: false,
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(14),
                FilteringTextInputFormatter.allow(RegExp(r'[\d.]')),
                doubleMoneyFormatting(),
              ],
              controller: _payTextController,
              onChanged: (onChanged) {
                context.read<AmountBloc>().add(
                      AmountEvent.changeAmount(
                        amount: _payTextController.text.parseToAmountDouble(),
                      ),
                    );
              },
              style: context.displaySmall(),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintStyle: context.displaySmall(),
                hintText: "0.0",
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    "UZS",
                    style: context.headlineLarge(),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  /// _answerCardWidget
  Widget get _receiverAmount =>
      BlocBuilder<AmountBloc, AmountState>(builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "transfer.resipients".translate,
                style: context.labelLarge().copyWith(fontSize: 16),
              ),
              verticalBox(verticalSize: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        (state.amount * (state.commissionModel?.rate ?? 0))
                            .toString()
                            .parseToAmountString(),
                        style: context.labelLarge().copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      "RUB",
                      style: context.labelLarge().copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      });

  /// _textCodeWidget
  Widget get _promoCode => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          horizontalBox(horizontalSize: 0.0),
          InkWell(
            onTap: _pushPromoCodeButton,
            child: Text(
              "transfer.promo_code".translate,
              style: context.bodyLarge().copyWith(color: blueColors),
            ),
          ),
        ],
      );

  /// _secondCardWidget
  Widget get _rate =>
      BlocBuilder<AmountBloc, AmountState>(builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titleItem(
                title: "transfer.today_course".translate,
                trailingTitle: "1 RUB = ${state.commissionModel?.rate} UZS",
                state: state,
                isRate: true,
              ),
              _titleItem(
                title: "transfer.fee".translate,
                trailingTitle:
                    "${(state.commissionModel?.rate ?? 0.0).toString().parseToAmountString()} UZS",
                isRate: false,
                state: state,
              ),
              _titleItem(
                title: "transfer.min_price".translate,
                trailingTitle:
                    "${(state.commissionModel?.min ?? 0.0).toString().parseToAmountString()} UZS",
                isRate: false,
                state: state,
              ),
            ],
          ),
        );
      });

  /// _notificationsIconWidget
  Widget _notificationsIconWidget() => Container(
        width: 42,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: InkWell(
          onTap: _notificationsIconButton,
          child: Icon(
            Icons.notifications_none,
            color: textColor,
          ),
        ),
      );

  /// _personIconWidget
  Widget _personIconWidget() => InkWell(
        onTap: _personIconButton,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Image.asset(
            "assets/images/person.png",
            width: 40,
            height: 40,
            fit: BoxFit.fill,
          ),
        ),
      );

  Widget _titleItem({
    required String title,
    required String trailingTitle,
    required AmountState state,
    required bool isRate,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                title,
                style: context.titleSmall(),
              ),
            ),
            horizontalBox(horizontalSize: 16),
            if (state.commissionNetworkStatus == NetworkStatus.loading)
              const Expanded(
                  child: ShimmerItem(width: double.maxFinite, height: 16)),
            if (isRate &&
                state.commissionNetworkStatus == NetworkStatus.failure)
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    context
                        .read<AmountBloc>()
                        .add(const AmountEvent.getCommission());
                  },
                  icon: Icon(
                    Icons.refresh,
                    color: buttonColor,
                  ),
                ),
              ),
            if (state.commissionNetworkStatus != NetworkStatus.loading &&
                state.commissionNetworkStatus != NetworkStatus.failure)
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    trailingTitle,
                    style: context.labelLarge(),
                  ),
                ),
              ),
          ],
        ),
      );

  Widget get _continueButton => ContinueButton(onClick: _createTransfer);
}
