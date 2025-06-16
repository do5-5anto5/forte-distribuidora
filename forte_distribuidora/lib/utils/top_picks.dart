import '../domain/data/models/data_list.dart';
import '../domain/data/models/product.dart';

List<Product> topPicks() {
  List<Product> toShuffle = List.from(allProducts);
  toShuffle.shuffle();
  return toShuffle.sublist(0, 3);
}