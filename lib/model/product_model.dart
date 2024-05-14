
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
    const factory ProductModel({
        @JsonKey(name: "title")
        required String title,
        @JsonKey(name: "price")
        required int price,
        @JsonKey(name: "image")
        required String image,
        @JsonKey(name: "type")
        required String type,
    }) = _ProductModel;

    factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}