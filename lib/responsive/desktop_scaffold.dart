import 'package:flutter/material.dart';
import '../utils/my_colored_box.dart';
import '../utils/my_tile.dart';
import 'const.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: myAppBar,
      body: Row(
        children: [
          // show drawer beside body in desktop
          Expanded(child: myDrawer),
          // main body
          Expanded(
            flex: 3,
            child: Column(
              children: [
                // 6 boxes
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
          ),

          // widget beside body
          Expanded(
              child: Container(
            color: Colors.black,
          ))
        ],
      ),
    );
  }
}
