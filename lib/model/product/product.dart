import 'package:freezed_annotation/freezed_annotation.dart';

import 'coloradd.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    String? id,
    @JsonKey(name: 'product_name') String? productName,
    String? photo,
    double? price,
    String? description,
    Coloradd? coloradd,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
