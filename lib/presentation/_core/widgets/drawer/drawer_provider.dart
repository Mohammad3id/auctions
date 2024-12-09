import 'package:auctions/presentation/_core/widgets/drawer/drawer_menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DrawerProvider extends StatelessWidget {
  final Widget Function(BuildContext context) builder;

  const DrawerProvider({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      angle: 0,
      menuBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
      menuScreenWidth: MediaQuery.sizeOf(context).width * 0.8 - 50,
      slideWidth: MediaQuery.sizeOf(context).width * 0.8,
      menuScreen: const DrawerMenuScreen(),
      mainScreen: Builder(builder: builder),
    );
  }
}
