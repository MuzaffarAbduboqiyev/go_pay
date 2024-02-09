import 'package:flutter/material.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 30,
        height: 14,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        child: LinearProgressIndicator(
          backgroundColor: buttonColor.withOpacity(0.5),
          valueColor: AlwaysStoppedAnimation<Color>(buttonColor),
        ),
      ),
    );
  }
}
