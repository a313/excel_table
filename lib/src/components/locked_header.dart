import 'package:flutter/material.dart';

import 'header_widget.dart';

class LockedHeaderWidget extends StatelessWidget {
  final List<double> columnWidth;
  final List<Widget> listHeaders;
  final EdgeInsets? padding;
  final int end;
  final Color headerColor;

  const LockedHeaderWidget(
      {Key? key,
      required this.columnWidth,
      required this.listHeaders,
      this.padding,
      required this.end,
      required this.headerColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExcelHeaderWidget(
      listHeaders: listHeaders.getRange(0, end),
      columnWidth: columnWidth.getRange(0, end),
      padding: padding,
      backgroundColor: headerColor,
    );
  }
}
