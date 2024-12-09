import 'package:auctions/data/models/listing/listing.dart';
import 'package:auctions/presentation/_core/contants/app_theme.dart';
import 'package:auctions/presentation/_core/widgets/biddings_tag/biddings_tag_containter.dart';
import 'package:flutter/material.dart';

class FeaturedBiddingCard extends StatelessWidget {
  final OnlineBidding bidding;

  const FeaturedBiddingCard({super.key, required this.bidding});

  @override
  Widget build(BuildContext context) {
    return BiddingsTagContainter(
      biddingsCount: bidding.biddingsCount,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                bidding.image,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.white),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.black45,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black45,
                    ],
                    stops: [0, 0.3, 0.7, 1],
                    begin: AlignmentDirectional.topCenter,
                    end: AlignmentDirectional.bottomCenter,
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bidding.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    const Text(
                      "Online Bidding",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    const Spacer(),
                    Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Icon(
                              Icons.hourglass_bottom_outlined,
                              color: AppTheme.primaryColor.shade700,
                              size: 16,
                            ),
                          ),
                          TextSpan(
                            text: "Ongoing",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
