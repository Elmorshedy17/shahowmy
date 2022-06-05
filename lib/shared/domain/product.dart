class Product {
  int? id;
  String? name;
  String? category;
  int? favorite;
  String? image;
  String? offer;
  String? price;
  String? priceOffer;

  Product(
      {this.id,
      this.name,
      this.category,
      this.favorite,
      this.image,
      this.offer,
      this.price,
      this.priceOffer});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    favorite = json['favorite'];
    image = json['image'];
    offer = json['offer'];
    price = json['price'];
    priceOffer = json['price_offer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['category'] = this.category;
    data['favorite'] = this.favorite;
    data['image'] = this.image;
    data['offer'] = this.offer;
    data['price'] = this.price;
    data['price_offer'] = this.priceOffer;
    return data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.name == name &&
        other.category == category &&
        other.favorite == favorite &&
        other.image == image &&
        other.offer == offer &&
        other.price == price &&
        other.priceOffer == priceOffer;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        category.hashCode ^
        favorite.hashCode ^
        image.hashCode ^
        offer.hashCode ^
        price.hashCode ^
        priceOffer.hashCode;
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, category: $category, favorite: $favorite, image: $image, offer: $offer, price: $price, priceOffer: $priceOffer)';
  }
}
