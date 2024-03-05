import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pay/controller/transfer_controller/amount_controller/amount_bloc.dart';
import 'package:go_pay/controller/transfer_controller/receiver_controller/receiver_bloc.dart';
import 'package:go_pay/controller/transfer_controller/receiver_controller/receiver_event.dart';
import 'package:go_pay/controller/transfer_controller/receiver_controller/receiver_state.dart';
import 'package:go_pay/controller/transfer_controller/transfer_repository.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/buttons/button_widget.dart';
import 'package:go_pay/ui/widgets/dialog/loading_dialog.dart';
import 'package:go_pay/ui/widgets/dialog/snack_bar.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/ui/widgets/text_field_widget/mask_formatters.dart';
import 'package:go_pay/utils/extensions/keyboard_extension/keyboard_extension.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class TransferUzbScreen extends StatefulWidget {
  const TransferUzbScreen({super.key});

  @override
  State<TransferUzbScreen> createState() => _TransferUzbScreenState();
}

class _TransferUzbScreenState extends State<TransferUzbScreen>
    with AppbarWidget, SvgImageWidget {
  final TextEditingController _cardController = TextEditingController();

  _notificationsIconButton() {}

  _personIconButton() {}

  _continueButton() {
    if (cardMaskFormatter.unmaskText(_cardController.text).length < 16) {
      context.showSnackBar(
        "${"error.invalid_length_first".translate} 16 ${"error.invalid_length_last".translate}",
      );

      return;
    }

    if (context.read<ReceiverBloc>().state.receiverName.isEmpty) {
      context.showSnackBar("error.receiver_not_found".translate);
      return;
    }

    _navigateAmountScreen();
  }

  void _navigateAmountScreen() {
    context.goScreen(
      screenName: PageName.transferAmountScreen,
      arguments: {
        "receiverCard": cardMaskFormatter.unmaskText(_cardController.text),
        "receiverName": context.read<ReceiverBloc>().state.receiverName,
        "bloc": AmountBloc(getIt<TransferRepository>()),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      appBar: actionsAppBar(
          backgroundColor: cardColor,
          type: AppbarType.withBack,
          actions: [
            _notificationsIconWidget(),
            _personIconWidget(),
          ]),
      body: BlocListener<ReceiverBloc, ReceiverState>(
        listener: (context, state) {
          if (state.networkStatus == NetworkStatus.loading) {
            showLoadingDialog();
          } else {
            // hideLoadingDialog();
          }
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titleNumberWidget,
              _imageCardWidget,
              _cardNumberFormFieldWidget,
              verticalBox(verticalSize: 16),
              _nameSurnameWidget,
              verticalBox(verticalSize: 16),
              name,
            ],
          ),
        ),
      ),
      bottomNavigationBar: _continueButtonWidget(),
    );
  }

  /// _titleNumberWidget
  Widget get _titleNumberWidget => Text(
        "transfer.card_text".translate,
        style: context.titleSmall().copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
      );

  /// _imageCardWidget
  Widget get _imageCardWidget => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(12),
          child: svgImageWidget(
            imageName: "frame",
            imageWidth: double.infinity,
            imageHeight: 143,
            boxFitType: BoxFit.fill,
          ),
        ),
      );

  /// _cardNumberFormFieldWidget
  Widget get _cardNumberFormFieldWidget =>
      BlocBuilder<ReceiverBloc, ReceiverState>(
        builder: (context, state) => TextFormField(
          controller: _cardController,
          decoration: InputDecoration(
            fillColor: whiteColor,
            hintText: "transfer.card_number".translate,
            hintStyle: context.bodyLarge().copyWith(
                  color: hintColor,
                ),
            errorText: state.networkStatus == NetworkStatus.failure &&
                    state.error.isNotEmpty
                ? state.error
                : null,
          ),
          inputFormatters: [cardMaskFormatter],
          keyboardType: TextInputType.phone,
          readOnly: state.networkStatus == NetworkStatus.loading,
          onChanged: (value) {
            if (cardMaskFormatter.unmaskText(value).length == 16 ||
                cardMaskFormatter.unmaskText(value).length == 15) {
              context.read<ReceiverBloc>().add(
                    ReceiverEvent.receiver(
                      receiverCard: cardMaskFormatter.unmaskText(value),
                    ),
                  );
            }
          },
        ),
      );

  /// _nameSurnameWidget
  Widget get _nameSurnameWidget => Text(
        "transfer.name_text".translate,
        style: context.titleSmall().copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
      );

  Widget get name => BlocBuilder<ReceiverBloc, ReceiverState>(
        buildWhen: (previous, current) =>
            previous.receiverName != current.receiverName,
        builder: (context, state) => Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: borderColor,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            state.receiverName.isNotEmpty
                ? state.receiverName
                : "transfer.receiver_name".translate,
            style: context.bodyLarge().copyWith(
                  color: hintColor,
                ),
          ),
        ),
      );

  /// _notificationsIconWidget
  Widget _notificationsIconWidget() => Container(
        width: 40,
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

  /// _continueButtonWidget
  Widget _continueButtonWidget() => Padding(
        padding: const EdgeInsets.all(16.0),
        child: ContinueButton(
          onClick: _continueButton,
          title: "transfer.continue".translate,
        ),
      );

  @override
  void dispose() {
    hideLoadingDialog();
    hideKeyboard();
    super.dispose();
  }
}
