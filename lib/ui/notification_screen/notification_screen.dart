import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotificationPage();
  }
}

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with AppbarWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: actionsAppBar(
        title: "notification.appbar".translate,
      ),
    );
  }
}
