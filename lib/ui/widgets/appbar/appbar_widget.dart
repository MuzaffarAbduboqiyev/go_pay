import 'package:flutter/material.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

enum AppbarType {
  simple,
  withBack,
  withCancel,
}

abstract mixin class AppbarWidget {
  AppbarItem simpleAppBar({
    required String title,
    AppbarType? type,
    Color? backgroundColor,
  }) =>
      AppbarItem(
        title: title,
        type: type ?? AppbarType.simple,
      );

  AppbarItem actionsAppBar({
    required String title,
    AppbarType? type,
    Color? backgroundColor,
    List<Widget>? actions,
  }) =>
      AppbarItem(
        title: title,
        type: type ?? AppbarType.simple,
        actions: actions,
      );
}

class AppbarItem extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final AppbarType type;

  const AppbarItem({
    required this.title,
    required this.type,
    this.actions,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: type == AppbarType.withBack
          ? IconButton(
              icon: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
              onPressed: () => context.pop(),
            )
          : type == AppbarType.withCancel
              ? IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onPressed: () => context.pop(),
                )
              : null,
      title: Text(
        title,
        style: context.customStyle(
          textSize: 22,
          weight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
      actions: actions,
      toolbarHeight: 52,
      backgroundColor: backgroundColor ?? buttonColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(52);
}
