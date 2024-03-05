import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pay/controller/transfer_controller/amount_controller/amount_bloc.dart';
import 'package:go_pay/controller/transfer_controller/amount_controller/amount_event.dart';
import 'package:go_pay/controller/transfer_controller/amount_controller/amount_state.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/dialog/loading_dialog.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  final String url;
  final String extId;

  const WebViewScreen({
    super.key,
    required this.url,
    required this.extId,
  });

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> with AppbarWidget {
  late WebViewController controller;

  void _onPageFinished() async {
    context.read<AmountBloc>().add(
          AmountEvent.checkTransferStatus(
            extId: context.read<AmountBloc>().state.extId,
          ),
        );
  }

  void _init() {
    controller = WebViewController()
      ..loadRequest(Uri.parse(widget.url))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (url) {
            _onPageFinished();
          },
        ),
      );
  }

  void _monitoringScreen() {
    context.goAndBackOtherScreen(
      goScreenName: PageName.monitoringScreen,
      backScreenName: PageName.homeScreen,
    );
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AmountBloc, AmountState>(
      listener: (context, state) {
        if (state.transferNetworkStatus == NetworkStatus.loading) {
          showLoadingDialog();
        } else if (state.transferNetworkStatus == NetworkStatus.loading) {
          hideLoadingDialog();
          _monitoringScreen();
        } else if (state.transferNetworkStatus == NetworkStatus.failure) {
          showErrorDialog(errorMessage: state.error);
          context.pop();
        }
      },
      child: Scaffold(
        appBar: simpleAppBar(
          title: "transfer.transfer".translate,
          type: AppbarType.withBack,
        ),
        body: WebViewWidget(controller: controller),
      ),
    );
  }
}
