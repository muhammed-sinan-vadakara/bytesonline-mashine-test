import 'dart:developer';

import 'package:bytesonline_machinetest/core/constants/constants.dart';
import 'package:bytesonline_machinetest/core/utils/api_utils.dart';
import 'package:bytesonline_machinetest/model/product_model.dart';
import 'package:dio/dio.dart';

class ProductServices {
  static Future<List<ProductModel>?> getProducts(int page) async {
    final dio = Dio();
    try {
      dio.options.headers['appid'] = Constants.appId;
      FormData data = FormData.fromMap({'page': page});
      final Response resp = await dio.post(ApiUtils.apiUrl, data: data);
      if (resp.statusCode == 200) {
        log(resp.statusCode.toString());
        final producList = <ProductModel>[];
        for (final result in resp.data['list']) {
          producList.add(ProductModel.fromJson(result));
        }
        return producList;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
