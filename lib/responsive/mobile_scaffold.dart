import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/constants.dart';
import 'package:responsive_dashboard_flutter/util/my_box.dart';
import 'package:responsive_dashboard_flutter/util/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultbackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          // 4 boxes on the top
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
    );
  }
}
