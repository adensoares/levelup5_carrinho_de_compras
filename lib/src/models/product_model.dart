import 'dart:convert';

class ProductModel {
  String title;
  String image;
  double price;

  ProductModel({
    required this.title,
    required this.image,
    required this.price,
  });

  ProductModel copyWith({
    String? title,
    String? image,
    double? price,
  }) {
    return ProductModel(
      title: title ?? this.title,
      image: image ?? this.image,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
      'price': price,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      title: map['title'],
      image: map['image'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'ProductModel(title: $title, image: $image, price: $price)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.title == title &&
        other.image == image &&
        other.price == price;
  }

  @override
  int get hashCode => title.hashCode ^ image.hashCode ^ price.hashCode;
}
