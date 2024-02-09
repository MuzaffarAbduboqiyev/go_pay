import 'package:flutter/material.dart';

final primaryColor = HexColor.fromHex("#1D4ED8");
final backgroundColor = HexColor.fromHex("#FFFFFF");
final statusBarColor = HexColor.fromHex("#FFFFFF");
final inputBackgroundColor = HexColor.fromHex("#F4F5F7");
final hintColor = HexColor.fromHex("#808080");
final textColor = HexColor.fromHex("#141D17");
final dividerColor = HexColor.fromHex("#a09ca2");
final cardColor = HexColor.fromHex("#F9F9F9");
final borderColor = HexColor.fromHex("#E4E4E4");
final clockColor = HexColor.fromHex("#374151");
final buttonColor = HexColor.fromHex("#00AB43");
final disableButtonColor = HexColor.fromHex("#c3ead1");
final errorColor = HexColor.fromHex("#ff4877");
final whiteColor = HexColor.fromHex("#FFFFFF");
final launcherColor = HexColor.fromHex("#1AB8AE");
final cancelButtonBackgroundColor = HexColor.fromHex("#E8F9F7");
final blueColors = HexColor.fromHex("#2F80ED");
final greyBackgroundColor = HexColor.fromHex("#F9F9F9");
final greyHintColor = HexColor.fromHex("#E5E7EB");
final blackColors = HexColor.fromHex("#000000");

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
