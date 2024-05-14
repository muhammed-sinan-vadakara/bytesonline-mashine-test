import 'package:bytesonline_machinetest/controller/services/product_api_services.dart';
import 'package:bytesonline_machinetest/model/product_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'product_provider.g.dart';

@riverpod
class Product extends _$Product {
  @override
  void build() {}

  Future<List<ProductModel>?> getData() async {
    return ProductServices.getProducts(1);
  }
}
