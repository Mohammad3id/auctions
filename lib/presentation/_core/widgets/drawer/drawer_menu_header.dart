import 'package:auctions/presentation/_core/contants/app_assets.dart';
import 'package:auctions/presentation/_core/contants/app_theme.dart';
import 'package:auctions/presentation/_core/widgets/drawer/drawer_menu_screen.dart';
import 'package:flutter/material.dart';

class DrawerMenuHeader extends StatelessWidget {
  const DrawerMenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: DrawerMenuScreen.padding,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppTheme.primaryColor.shade100,
            ),
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              AppAssets.logo,
              width: 20,
              height: 20,
            ),
          ),
          const SizedBox(width: 12),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to",
                style: TextStyle(
                  color: AppTheme.primaryColor,
                  fontSize: 10,
                  height: 1,
                ),
              ),
              Text("Auctions App"),
            ],
          ),
        ],
      ),
    );
  }
}
