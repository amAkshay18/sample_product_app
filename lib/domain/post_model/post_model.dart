import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  String? title;
  double? price;
  String? description;
  String? image;
  String? category;

  PostModel({
    this.title,
    this.price,
    this.description,
    this.image,
    this.category,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return _$PostModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
