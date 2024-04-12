import 'package:flutter/services.dart';

import '../../../core/theming/assets.dart';
import 'dart:html' as html;

Future<void> downloadFile() async {
  final bytes = await rootBundle.load(Assets.myResume);
  final blob = html.Blob([bytes.buffer.asUint8List()]);
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)
    ..setAttribute("download", "Muhammad Nasser's Resume.pdf")
    ..click();
  html.Url.revokeObjectUrl(url);
}