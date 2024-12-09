import 'package:auctions/presentation/_core/widgets/biddings_tag/biddings_tag.dart';
import 'package:flutter/material.dart';

class BiddingsTagContainter extends StatelessWidget {
  final int? biddingsCount;
  final Widget child;

  const BiddingsTagContainter({
    super.key,
    required this.biddingsCount,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (biddingsCount == null) return child;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        PositionedDirectional(
          end: -5,
          top: -5,
          child: BiddingsTag(count: biddingsCount!),
        )
      ],
    );
  }
}
