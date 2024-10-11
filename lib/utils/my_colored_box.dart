import 'package:flutter/material.dart';

class MyColoredBox extends StatelessWidget {
  const MyColoredBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(8.0), child: ColoredBox(color: Colors.grey));
  }
}
