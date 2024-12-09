part of 'listing.dart';

class OnlineBidding implements Listing {
  @override
  final String id;

  @override
  final String image;

  @override
  final Seller seller;

  @override
  final String title;

  final bool isFeatured;

  final DateTime biddingStart;
  final DateTime biddingEnd;

  final int biddingsCount;

  OnlineBidding({
    required this.id,
    required this.image,
    required this.seller,
    required this.title,
    required this.isFeatured,
    required this.biddingStart,
    required this.biddingEnd,
    required this.biddingsCount,
  });
}

extension OnlineBiddingState on OnlineBidding {
  BiddingState get state {
    final now = DateTime.now();

    if (now.difference(biddingStart).isNegative) {
      return BiddingState.notStarted;
    } else if (now.difference(biddingEnd).isNegative) {
      return BiddingState.ongoing;
    } else {
      return BiddingState.ended;
    }
  }
}

enum BiddingState {
  notStarted,
  ongoing,
  ended,
}
