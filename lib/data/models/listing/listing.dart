import 'package:auctions/data/models/seller/seller.dart';

part 'direct_sale.dart';
part 'online_bidding.dart';

sealed class Listing {
  abstract final String id;
  abstract final String image;
  abstract final String title;
  abstract final Seller seller;
}
