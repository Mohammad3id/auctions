import 'package:auctions/presentation/_core/contants/app_assets.dart';
import 'package:auctions/presentation/_core/contants/app_theme.dart';
import 'package:auctions/presentation/_core/widgets/drawer/drawer_menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DrawerMenuList extends StatelessWidget {
  const DrawerMenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const _MenuListItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            isActive: true,
          ),
          const _MenuListLabel("Engage & Dicover"),
          _MenuListItem(
            icon: Image.asset(AppAssets.logo),
            label: "About",
          ),
          const _MenuListItem(
            icon: Icon(Icons.map_outlined),
            label: "Find Branches",
          ),
          const _MenuListItem(
            icon: Icon(Icons.handshake_outlined),
            label: "Start a Partnership",
          ),
          const _MenuListItem(
            icon: Icon(Icons.category_outlined),
            label: "Our Services",
          ),
          const _MenuListItem(
            icon: Icon(Icons.airport_shuttle_outlined),
            label: "Our Fleet",
          ),
          const _MenuListItem(
            icon: Icon(Icons.workspace_premium_outlined),
            label: "Awards & Achievments",
          ),
          const _MenuListItem(
            icon: Icon(Icons.car_rental),
            label: "Sell Your Vehicle",
          ),
          const _MenuListItem(
            icon: Icon(Icons.newspaper),
            label: "News",
          ),
          const _MenuListItem(
            icon: Icon(Icons.group),
            label: "Social Responsibilities",
          ),
          const _MenuListItem(
            icon: Icon(Icons.phone),
            label: "Contact Us",
          ),
          const _MenuListFeedbackSection(),
          const _MenuListLabel("Support"),
          const _MenuListItem(
            icon: Icon(Icons.article_outlined),
            label: "Terms & Conditions",
          ),
          const _MenuListItem(
            icon: Icon(Icons.help),
            label: "Help/FAQ",
          ),
        ],
      ),
    );
  }
}

class _MenuListLabel extends StatelessWidget {
  final String text;
  const _MenuListLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: DrawerMenuScreen.padding,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
      ),
    );
  }
}

class _MenuListItem extends StatelessWidget {
  final Widget icon;
  final String label;
  final bool isActive;
  final void Function()? onTap;

  const _MenuListItem({
    required this.icon,
    required this.label,
    this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isActive ? AppTheme.primaryColor : null;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: DrawerMenuScreen.padding - 8,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAlias,
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            ZoomDrawer.of(context)?.close();
            onTap?.call();
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                if (icon is Icon)
                  Icon((icon as Icon).icon, color: color)
                else
                  SizedBox.square(
                    dimension: 24,
                    child: icon,
                  ),
                const SizedBox(width: 12),
                Text(label, style: TextStyle(color: color)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MenuListFeedbackSection extends StatelessWidget {
  const _MenuListFeedbackSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.withOpacity(0.3),
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 12,
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const SizedBox(
            width: 100,
            child: Text(
              "Happy to get your feedback",
              style: TextStyle(fontSize: 12),
            ),
          ),
          const Spacer(),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.star_border_outlined),
            label: const Text("Rate App"),
            style: TextButton.styleFrom(
              backgroundColor: AppTheme.primaryColor,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
