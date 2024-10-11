import 'package:flutter/material.dart';
import 'package:responsive_design/responsive/const.dart';
import 'package:responsive_design/utils/my_colored_box.dart';
import 'package:responsive_design/utils/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
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
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
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
