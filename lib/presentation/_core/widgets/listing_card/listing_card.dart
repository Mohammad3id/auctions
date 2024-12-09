import 'package:auctions/data/models/listing/listing.dart';
import 'package:auctions/presentation/_core/widgets/biddings_tag/biddings_tag_containter.dart';
import 'package:flutter/material.dart';

class ListingCard extends StatelessWidget {
  final Listing listing;

  const ListingCard({super.key, required this.listing});

  @override
  Widget build(BuildContext context) {
    final listing = this.listing;
    return BiddingsTagContainter(
      biddingsCount: (listing is OnlineBidding) ? listing.biddingsCount : null,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              padding: const EdgeInsets.all(4),
              child: Image.network(
                listing.image,
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
            const SizedBox(height: 6),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                listing.title,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 2),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                switch (listing) {
                  DirectSale() => "Direct Sale",
                  OnlineBidding() => "Online Bidding",
                },
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 6),
            const Spacer(),
            switch (listing) {
              DirectSale() => _CardButton(
                  label: "Buy now",
                  icon: Icons.shopping_cart,
                  onPressed: () {},
                ),
              OnlineBidding() => switch (listing.state) {
                  BiddingState.notStarted => _CardButton(
                      label: "Notify me",
                      icon: Icons.gavel_outlined,
                      onPressed: () {},
                    ),
                  BiddingState.ongoing => _CardButton(
                      label: "Ongoing",
                      icon: Icons.hourglass_bottom_outlined,
                      onPressed: () {},
                    ),
                  BiddingState.ended => const _CardButton(label: "Ended"),
                },
            },
          ],
        ),
      ),
    );
  }
}

class _CardButton extends StatelessWidget {
  final void Function()? onPressed;
  final String label;
  final IconData? icon;

  const _CardButton({
    this.onPressed,
    this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton.icon(
        onPressed: onPressed,
        icon: icon == null ? null : Icon(icon, size: 12),
        label: Text(
          label,
          style: const TextStyle(fontSize: 10),
        ),
        style: TextButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: Size.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8),
          backgroundColor: Colors.grey.withOpacity(0.5),
        ),
      ),
    );
  }
}
