import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/responsive/desktop_scaffold.dart';
import 'package:responsive_dashboard_flutter/responsive/mobile_scaffold.dart';
import 'package:responsive_dashboard_flutter/responsive/responsive_layout.dart';
import 'package:responsive_dashboard_flutter/responsive/tablet_scaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        desktopScaffold: const DesktopScaffold(),
      ),
    );
  }
}
