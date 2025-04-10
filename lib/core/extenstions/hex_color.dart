import 'package:flutter/material.dart';

extension HexColor on Color {
  static Color? fromHex(String? hexString) {
    if (hexString == null || !hexString.contains('#')) return null;
    final StringBuffer buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
