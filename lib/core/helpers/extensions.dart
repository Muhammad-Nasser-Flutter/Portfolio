import 'package:flutter/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
      String routeName, bool Function(dynamic route) param1,
      {Object? arguments,}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, param1, arguments: arguments);
  }

  void pop({bool? isTrue}) => Navigator.of(this).pop(
        isTrue ?? false,
      );



}


extension StringExtensions on String {
  String get firstTwoChars =>
      (length >= 2) ? substring(0, 2).toUpperCase() : this;
}

extension StringExtension on String {
  String removeSpecialCharacters() {
    return replaceAll('\t', '')
        .replaceAll('\r', '')
        .replaceAll('\n', '')
        .replaceAll('\\', '');
  }
}

extension DateTimeExtension on DateTime {
  String toCustomFormat() {
    final year = this.year.toString().padLeft(4, '0');
    final month = this.month.toString().padLeft(2, '0');
    final day = this.day.toString().padLeft(2, '0');
    return '$year-$month-$day';
  }
}

extension IsoStringFormatter on String {
  String formatIsoStringToTime(context) {
    try {
      DateTime dateTime = DateTime.parse(this);
      final String period = dateTime.hour < 12 ? 'AM'.tr() : 'PM'.tr();
      final int formattedHour =
      dateTime.hour % 12 == 0 ? 12 : dateTime.hour % 12;

      return  '${formattedHour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')} - $period';
    } catch (e) {
      // Handle parsing errors or invalid ISO strings
      return 'Invalid DateTime';
    }
  }
}

extension RowPaddingExtension on Row {
  Row addPaddingBetweenChildren(double padding) {
    final childrenWithPadding = <Widget>[];
    for (int i = 0; i < children.length; i++) {
      childrenWithPadding.add(children[i]);
      if (i < children.length - 1) {
        childrenWithPadding.add(SizedBox(width: padding));
      }
    }
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: childrenWithPadding,
    );
  }
}

extension DoubleExtraction on String {
  double extractDouble() {
    final numericPart =
    replaceAll(RegExp(r'[^0-9.]'), ''); // Remove non-numeric characters
    return double.tryParse(numericPart) ?? 0.0;
  }
}

extension IPAddressExtension on String {
  String removeLastSegment() {
    List<String> segments = split('.');
    if (segments.length >= 4) {
      segments.removeLast();
      return segments.join('.');
    }
    return this; // If the string doesn't contain a valid IP address, return the original string
  }
}

extension ListExtension<T> on List<T> {
  int indexOfContainingInt(int tableNum) {
    for (int i = 0; i < length; i++) {
      if (this[i].toString().contains(tableNum.toString())) {
        return i;
      }
    }
    return -1;
  }
}