import 'package:auctions/presentation/_core/widgets/drawer/drawer_menu_auth_buttons.dart';
import 'package:auctions/presentation/_core/widgets/drawer/drawer_menu_header.dart';
import 'package:auctions/presentation/_core/widgets/drawer/drawer_menu_list.dart';
import 'package:flutter/material.dart';

class DrawerMenuScreen extends StatelessWidget {
  static const double padding = 16;

  const DrawerMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      elevation: 5,
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              DrawerMenuHeader(),
              SizedBox(height: 12),
              DrawerMenuAuthButtons(),
              SizedBox(height: 12),
              Expanded(
                child: DrawerMenuList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
