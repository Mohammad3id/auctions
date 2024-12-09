import 'package:auctions/data/models/listing/listing.dart';
import 'package:auctions/presentation/_core/widgets/listing_card/featured_bidding_card.dart';
import 'package:auctions/presentation/_core/widgets/listing_card/listing_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeListingsGrid extends StatelessWidget {
  final List<Listing> listings;

  const HomeListingsGrid({super.key, required this.listings});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: [
            const StaggeredGridTile.extent(
              crossAxisCellCount: 3,
              mainAxisExtent: 1,
              child: SizedBox.shrink(),
            ),
            ...listings.map(
              (listing) => (listing is OnlineBidding && listing.isFeatured)
                  ? StaggeredGridTile.extent(
                      crossAxisCellCount: 2,
                      mainAxisExtent: 150,
                      child: FeaturedBiddingCard(bidding: listing),
                    )
                  : StaggeredGridTile.extent(
                      crossAxisCellCount: 1,
                      mainAxisExtent: 150,
                      child: ListingCard(listing: listing),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
