import 'package:auctions/presentation/_core/contants/app_theme.dart';
import 'package:flutter/material.dart';

class BiddingsTag extends StatelessWidget {
  final int count;
  const BiddingsTag({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppTheme.primaryColor.shade800,
            AppTheme.primaryColor.shade300,
          ],
        ),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.white),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      child: Text(
        "$count",
        style: const TextStyle(
          fontSize: 10,
          color: Colors.white,
        ),
      ),
    );
  }
}
