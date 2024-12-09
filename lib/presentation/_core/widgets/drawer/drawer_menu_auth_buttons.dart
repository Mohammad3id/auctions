import 'package:auctions/presentation/_core/contants/app_theme.dart';
import 'package:auctions/presentation/_core/widgets/drawer/drawer_menu_screen.dart';
import 'package:flutter/material.dart';

class DrawerMenuAuthButtons extends StatelessWidget {
  const DrawerMenuAuthButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: DrawerMenuScreen.padding,
      ),
      child: Row(
        children: [
          Expanded(
            child: _ButtonView(
              onTap: () {},
              label: "Login",
              icon: Icons.login,
              backgroundColor: Colors.black,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _ButtonView(
              onTap: () {},
              label: "Sign up",
              icon: Icons.person_add,
              backgroundColor: AppTheme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _ButtonView extends StatelessWidget {
  final String label;
  final IconData icon;
  final void Function() onTap;
  final Color backgroundColor;

  const _ButtonView({
    required this.label,
    required this.icon,
    required this.onTap,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onTap,
      icon: Icon(icon, size: 20),
      label: Text(
        label,
        style: const TextStyle(fontSize: 12),
      ),
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
