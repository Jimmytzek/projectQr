import 'package:flutter/material.dart';

import 'dart:async';

class DisplayWidget extends StatelessWidget {
  final Color color;
  DisplayWidget(this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
