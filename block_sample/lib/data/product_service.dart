import 'package:block_sample/models/product.dart';

class ProductService {
  static List<Product> products = new List<Product>();

  static ProductService _singleton =ProductService._internal();

  factory ProductService(){
    return _singleton;
  }

  ProductService._internal();

  static List<Product> getAll() {
    products.add(new Product(1, "Acer laptop", 6000));
    products.add(new Product(2, "Asus laptop", 7000));
    products.add(new Product(3, "Monster laptop", 8000));
    products.add(new Product(4, "Kapo laptop", 9000));
    return products;
  }
}
