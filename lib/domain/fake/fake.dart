import 'package:json_annotation/json_annotation.dart';

part 'fake.g.dart';

@JsonSerializable()
class Fake {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;

  Fake({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });

  factory Fake.fromJson(Map<String, dynamic> json) => _$FakeFromJson(json);

  Map<String, dynamic> toJson() => _$FakeToJson(this);
}
