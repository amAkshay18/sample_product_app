// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fake.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fake _$FakeFromJson(Map<String, dynamic> json) => Fake(
      id: json['id'] as int?,
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      category: json['category'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$FakeToJson(Fake instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
    };
