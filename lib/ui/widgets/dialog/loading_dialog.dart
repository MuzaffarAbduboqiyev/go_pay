import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';

showErrorDialog({
  required String? errorMessage,
}) {
  hideLoadingDialog();
  EasyLoading.showError(
    errorMessage ?? "error.unknown_error".translate,
    duration: const Duration(
      seconds: 3,
    ),
  );
}

showSuccessDialog({
  required String? successMessage,
}) async{
  await hideLoadingDialog();
  EasyLoading.instance.successWidget = null;
  await EasyLoading.showSuccess(
    successMessage ?? "",
    duration: const Duration(
      seconds: 3,
    ),
  );
}

Future<void> hideLoadingDialog() async {
  if (EasyLoading.isShow) {
    await EasyLoading.dismiss();
  }
}

Future<void> showLoadingDialog() async{
  if (EasyLoading.isShow == false) {
    await EasyLoading.show();
  } else {
    await hideLoadingDialog();
    await EasyLoading.show();
  }
}

void initialLoadingDialog() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 3000)
    ..indicatorType = EasyLoadingIndicatorType.cubeGrid
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = buttonColor
    ..boxShadow = <BoxShadow>[]
    ..backgroundColor = hintColor
    ..indicatorColor = buttonColor
    ..textColor = textColor
    ..maskColor = buttonColor
    ..maskType = EasyLoadingMaskType.black
    ..userInteractions = true
    ..dismissOnTap = false
    ..customAnimation = LoaderDialogAnimation();
}

class LoaderDialogAnimation extends EasyLoadingAnimation {
  @override
  Widget buildWidget(
    Widget child,
    AnimationController controller,
    AlignmentGeometry alignment,
  ) {
    return Opacity(
      opacity: controller.value,
      child: SizeTransition(
        sizeFactor: controller,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: child,
      ),
    );
  }
}
