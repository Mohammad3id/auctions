import 'package:auctions/data/dummy/dummy_listings.dart';
import 'package:auctions/presentation/_core/contants/app_assets.dart';
import 'package:auctions/presentation/_core/widgets/drawer/drawer_provider.dart';
import 'package:auctions/presentation/home/home_auth_bottom_sheet.dart';
import 'package:auctions/presentation/home/home_listings_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerProvider(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.black87,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            title: Row(
              children: [
                Image.asset(
                  AppAssets.logo,
                  width: 30,
                  height: 30,
                ),
                const SizedBox(width: 12),
                const Text("Auctions App"),
              ],
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                child: const Text("العربية"),
              ),
            ],
            leading: IconButton(
              onPressed: () => ZoomDrawer.of(context)?.toggle(),
              icon: const Icon(Icons.menu),
            ),
          ),
          body: HomeListingsGrid(listings: [
            ...dummyListings,
            ...dummyListings,
            ...dummyListings,
            ...dummyListings,
          ]),
          bottomSheet: const HomeAuthBottomSheet(),
        );
      },
    );
  }
}
