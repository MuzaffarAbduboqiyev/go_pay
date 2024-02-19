import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pay/controller/auth_controller/otp_controller/otp_bloc.dart';
import 'package:go_pay/controller/auth_controller/otp_controller/otp_event.dart';
import 'package:go_pay/controller/auth_controller/otp_controller/otp_state.dart';
import 'package:go_pay/ui/auth/otp_screen/otp_timer_item/otp_timer_item.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/buttons/button_widget.dart';
import 'package:go_pay/ui/widgets/dialog/loading_dialog.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/extensions/keyboard_extension/keyboard_extension.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OtpScreen extends StatefulWidget {
  final String phone;
  final int sessionId;

  const OtpScreen({
    super.key,
    required this.phone,
    required this.sessionId,
  });

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> with AppbarWidget {
  final TextEditingController _otpController = TextEditingController();

  _navigateHomeScreen() async {
    hideLoadingDialog();
    await context.goAndBackOtherScreen(
      goScreenName: PageName.welcomeHomeScreen,
      backScreenName: PageName.loginScreen,
    );
  }

  void _initSession() {
    context.read<OtpBloc>().add(
          OtpEvent.init(
            session: widget.sessionId,
            phone: widget.phone,
          ),
        );
  }

  void _continueButton() {
    if (_otpController.text.length == 6) {
      context.read<OtpBloc>().add(
            OtpEvent.submit(
              otp: _otpController.text,
              phone: widget.phone,
            ),
          );
    } else {
      showErrorDialog(
          errorMessage:
              "${"error.invalid_length_first".translate} 6 ${"error.invalid_length_last".translate}");
    }
  }

  @override
  void initState() {
    super.initState();
    _initSession();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OtpBloc, OtpState>(
      listenWhen: (previous, current) =>
          current.networkStatus != previous.networkStatus,
      listener: (context, state) {
        if (state.networkStatus == NetworkStatus.loading) {
          showLoadingDialog();
        } else if (state.networkStatus == NetworkStatus.failure) {
          showErrorDialog(errorMessage: state.error);
        } else if (state.networkStatus == NetworkStatus.success) {
          _navigateHomeScreen();
        }
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: simpleAppBar(
          type: AppbarType.withBack,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title,
                  verticalBox(verticalSize: 16),
                  _description,
                  verticalBox(verticalSize: 16),
                  _otpTextFieldWidget(),
                  verticalBox(verticalSize: 12),
                  const OtpTimerItem(),
                ],
              ),
              _continueWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _title => Text(
        "otp.otp_title".translate,
        style: context.headlineLarge(),
      );

  Widget get _description => Text(
    "${"otp.phone_title".translate} +${widget.phone}",
        style: context.bodyLarge().copyWith(
              color: hintColor,
            ),
      );

  /// _oTPTextField Widget
  Widget _otpTextFieldWidget() => Container(
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "otp.confirmation".translate,
              style: context.bodySmall(),
            ),
            verticalBox(verticalSize: 8),
            SizedBox(
              height: 66,
              child: PinFieldAutoFill(
                controller: _otpController,
                codeLength: 6,
                enableInteractiveSelection: true,
                decoration: BoxLooseDecoration(
                  gapSpace: 8,
                  radius: const Radius.circular(14.0),
                  bgColorBuilder: PinListenColorBuilder(
                    whiteColor,
                    inputBackgroundColor,
                  ),
                  strokeColorBuilder: PinListenColorBuilder(
                    buttonColor,
                    hintColor,
                  ),
                  textStyle: context.displayLarge().copyWith(fontSize: 26),
                ),
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                textInputAction: TextInputAction.done,
                smsCodeRegexPattern: r'[0-9]{4,10}',
              ),
            ),
          ],
        ),
      );

  /// _continueWidget
  Widget _continueWidget() => Expanded(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ContinueButton(
            onClick: _continueButton,
          ),
        ),
      );

  @override
  void dispose() {
    hideKeyboard();
    hideLoadingDialog();
    super.dispose();
  }
}
