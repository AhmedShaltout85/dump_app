import 'package:dump_app/models/favorite_item.dart';
import 'package:flutter/foundation.dart';

class Favorites with ChangeNotifier {
  final List<FavoriteItem> _favList = [];

  List<FavoriteItem> get favList {
    return [..._favList];
  }

  int get count {
    return _favList.length;
  }

  void addToFavorite(FavoriteItem favoriteItem) {
    _favList.add(favoriteItem);
    notifyListeners();
  }

  void removeFromFavorite(FavoriteItem favoriteItem) {
    // _favList.remove(favoriteItem);
    _favList.removeWhere((element) => element.title == favoriteItem.title);
    notifyListeners();
  }

  void clear() {
    _favList.clear();
    notifyListeners();
  }
}
