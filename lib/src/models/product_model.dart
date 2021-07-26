import 'dart:convert';

class ProductModel {
  String title;
  double price;

  ProductModel({
    required this.title,
    required this.price,
  });

  ProductModel copyWith({
    String? title,
    double? price,
  }) {
    return ProductModel(
      title: title ?? this.title,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'price': price,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      title: map['title'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source));

  @override
  String toString() => 'ProductModel(title: $title, price: $price)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductModel &&
      other.title == title &&
      other.price == price;
  }

  @override
  int get hashCode => title.hashCode ^ price.hashCode;
}
