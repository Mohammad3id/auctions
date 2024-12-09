import 'package:auctions/presentation/_core/contants/app_theme.dart';
import 'package:auctions/presentation/home/home_page.dart';
import 'package:flutter/material.dart';

class AuctionsApp extends StatelessWidget {
  const AuctionsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auctions App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppTheme.primaryColor),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
