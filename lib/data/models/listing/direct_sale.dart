part of 'listing.dart';

class DirectSale implements Listing {
  @override
  final String id;

  @override
  final String image;

  @override
  final Seller seller;

  @override
  final String title;

  final int price;

  DirectSale({
    required this.id,
    required this.image,
    required this.seller,
    required this.title,
    required this.price,
  });
}
