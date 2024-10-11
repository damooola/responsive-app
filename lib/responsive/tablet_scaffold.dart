import 'package:flutter/material.dart';

import '../utils/my_colored_box.dart';
import '../utils/my_tile.dart';
import 'const.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          // 6 boxes
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return const MyColoredBox();
                },
              ),
            ),
          ),

          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return const MyTile();
            },
            itemCount: 6,
          )),
        ],
      ),
    );
  }
}
