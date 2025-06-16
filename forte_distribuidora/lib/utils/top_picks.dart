import '../domain/data/models/data_list.dart';
import '../domain/data/models/product.dart';

Set<Product>? _cachedTopPicks;

Set<Product> topPicks() {
  // If the cache is not null, return it
  if (_cachedTopPicks != null) {
    return _cachedTopPicks!;
  }

  List<Product> toShuffle = List.from(allProducts);
  toShuffle.shuffle();
  Set<Product> returnSet = {};

  for (Product product in toShuffle) {
    returnSet.add(product);
    if (returnSet.length == 3) break;
  }

  _cachedTopPicks = returnSet;
  return returnSet;
}

// refresh the cache
void refreshTopPicks() {
  _cachedTopPicks = null;
}