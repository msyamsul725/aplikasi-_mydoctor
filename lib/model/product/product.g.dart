// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as String?,
      productName: json['product_name'] as String?,
      photo: json['photo'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      coloradd: json['coloradd'] == null
          ? null
          : Coloradd.fromJson(json['coloradd'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_name': instance.productName,
      'photo': instance.photo,
      'price': instance.price,
      'description': instance.description,
      'coloradd': instance.coloradd,
    };
