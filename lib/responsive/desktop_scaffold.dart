import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/constants.dart';
import 'package:responsive_dashboard_flutter/util/my_box.dart';
import 'package:responsive_dashboard_flutter/util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultbackground,
      appBar: myAppBar,
      body: Row(
        children: [
          //open drawer
          myDrawer,
          // rest of the body
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // 4 boxes on the top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return MyBox();
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return MyTile();
                    },
                  ),
                ),
                // tiles below it
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
