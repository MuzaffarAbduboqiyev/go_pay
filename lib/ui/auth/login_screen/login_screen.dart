import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_bloc.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_event.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_state.dart';
import 'package:go_pay/controller/auth_controller/otp_controller/otp_bloc.dart';
import 'package:go_pay/controller/auth_controller/otp_controller/otp_repository.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/buttons/button_widget.dart';
import 'package:go_pay/ui/widgets/dialog/loading_dialog.dart';
import 'package:go_pay/ui/widgets/dialog/snack_bar.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/extensions/keyboard_extension/keyboard_extension.dart';
import 'package:go_pay/utils/mask_formatters/mask_formatters.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/log_service/log_service.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with AppbarWidget, SvgImageWidget {
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> onClick() async {
    if (phoneController.text.isEmpty ||
        (context.read<LoginBloc>().state.country == "uz" &&
            uzPhoneMaskFormatter.unmaskText(phoneController.text).length !=
                9) ||
        (context.read<LoginBloc>().state.country == "ru" &&
            ruPhoneMaskFormatter.unmaskText(phoneController.text).length !=
                10)) {
      context.showSnackBar(
        "${"error.invalid_length_first".translate} ${context.read<LoginBloc>().state.country == "uz" ? "9" : "10"} ${"error.invalid_length_last".translate}",
      );
    } else {
      hideKeyboard();

      context.read<LoginBloc>().add(
            LoginEvent.login(
              phone: phoneController.text,
            ),
          );
    }
  }

  void _navigateOtpScreen() async {
    showLog("XXX");
    hideLoadingDialog();
    await context.goScreen(
      screenName: PageName.otpScreen,
      arguments: {
        "bloc": OtpBloc(
          getIt<OtpRepository>(),
        ),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        type: AppbarType.withBack,
      ),
      body: BlocListener<LoginBloc, LoginState>(
        listenWhen: (currentState, previousState) =>
            currentState.networkStatus != previousState.networkStatus,
        listener: (context, state) async {
          if (state.networkStatus == NetworkStatus.loading) {
            showLoadingDialog();
          } else if (state.networkStatus == NetworkStatus.failure) {
            showErrorDialog(errorMessage: state.error);
          } else if (state.networkStatus == NetworkStatus.success) {
            hideKeyboard();
            await hideLoadingDialog();
            _navigateOtpScreen();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalBox(verticalSize: 24),
                    _title,
                    verticalBox(verticalSize: 16),
                    _phone,
                  ],
                ),
              ),
              verticalBox(verticalSize: 16),
              _loginButton,
            ],
          ),
        ),
      ),
    );
  }

  Widget get _title => Text(
        'login.title'.translate,
        style: context.headlineSmall(),
      );

  Widget get _phone => Container(
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'login.phone_number'.translate,
                style: context.bodySmall(),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: borderColor,
                ),
              ),
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                        width: 90,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          padding: EdgeInsets.zero,
                          value: state.country,
                          underline: Container(
                            color: whiteColor,
                          ),
                          icon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: textColor,
                            ),
                          ),
                          onChanged: (String? newValue) {
                            if (newValue != null && newValue != state.country) {
                              context.read<LoginBloc>().add(
                                    LoginEvent.changeCountry(
                                      country: newValue,
                                    ),
                                  );

                              phoneController.clear();
                            }
                          },
                          items: ["uz", "ru"]
                              .map<DropdownMenuItem<String>>((String country) {
                            return DropdownMenuItem<String>(
                              value: country,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: borderColor,
                                  ),
                                ),
                                child: svgImageWidget(
                                  imageName: country,
                                  imageWidth: 30,
                                  imageHeight: 30,
                                  boxFitType: BoxFit.fill,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SizedBox(
                          width: 1,
                          height: 20,
                          child: VerticalDivider(
                            color: textColor,
                            width: 1,
                          ),
                        ),
                      ),

                      /// Phone number
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                state.country == "uz" ? "+998" : "+7",
                                style: context
                                    .bodyLarge()
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Form(
                                  key: formKey,
                                  child: TextFormField(
                                    controller: phoneController,
                                    style: context
                                        .bodyLarge()
                                        .copyWith(fontWeight: FontWeight.w600),
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintStyle: context.customStyle(
                                          color: hintColor,
                                          textSize: 16,
                                          weight: FontWeight.w600),
                                      hintText: state.country == "uz"
                                          ? "XX XXX XX XX"
                                          : "XXX XXX XX XX",
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: whiteColor,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: whiteColor,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: whiteColor,
                                        ),
                                      ),
                                      errorBorder: InputBorder.none,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        // vertical: 8,
                                      ),
                                    ),
                                    inputFormatters: [
                                      state.phoneMaskFormatter,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      );

  /// Continue button
  Widget get _loginButton => Expanded(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ContinueButton(
            onClick: onClick,
          ),
        ),
      );

  @override
  void dispose() {
    context.read<LoginBloc>().close();
    hideKeyboard();
    hideLoadingDialog();
    super.dispose();
  }
}
