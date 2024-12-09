import 'package:auctions/presentation/_core/contants/app_theme.dart';
import 'package:flutter/material.dart';

class HomeAuthBottomSheet extends StatelessWidget {
  const HomeAuthBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      shape: const LinearBorder(),
      onClosing: () {},
      builder: (context) => Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              AppTheme.primaryColor.shade100,
            ],
            stops: const [0.8, 1],
            begin: AlignmentDirectional.bottomCenter,
            end: AlignmentDirectional.topCenter,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(
          bottom: MediaQuery.paddingOf(context).bottom + 30,
          top: 10,
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
      icon: Icon(icon),
      label: Text(label),
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
