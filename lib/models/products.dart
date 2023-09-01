import 'dart:collection';

import 'package:flutter/foundation.dart';


class Product {
  final String title;
  final String imgUrl;
  final num price;

  Product({
    required this.title,
    required this.imgUrl,
    required this.price
  });
}

class ProductDataProvider with ChangeNotifier{
  final List<Product>_items = [
    Product(
      title: 'Футболка',
      imgUrl: 'https://vk.com/veshalka_smolensk?w=wall814401138_104%2Fall&z=photo814401138_457239692%2Fwall814401138_104',
      price: 2400.00,
    ),
    Product(
      title: 'Ветровка',
      imgUrl: 'https://vk.com/veshalka_smolensk?z=photo814401138_457239705%2Fwall814401138_105',
      price: 4600.00,
    ),
    Product(
      title: 'Рюкзак',
      imgUrl: 'https://vk.com/veshalka_smolensk?z=photo814401138_457239726%2Fwall814401138_109',
      price: 3300.00,
    ),
  ];

  UnmodifiableListView<Product> get items => UnmodifiableListView(_items);
}