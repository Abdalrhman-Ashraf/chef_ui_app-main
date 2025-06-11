

class AddMeal {
  String? name, description, price, offerPrice, image, preparationTime, categoryId, status;

  AddMeal({this.name, this.description, this.price, this.offerPrice, this.image, this.preparationTime, this.categoryId, this.status});

  factory AddMeal.fromJson(Map<String, dynamic> json) => AddMeal(
    name: json['name'],
    description: json['description'],
    price: json['price']?.toString(),
    offerPrice: json['offer_price'],
    image: json['image'],
    preparationTime: json['preparation_time'],
    categoryId: json['category_id'],
    status: json['status'],
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'description': description,
    'price': price,
    'offer_price': offerPrice,
    'preparation_time': preparationTime,
    'category_id': categoryId,
    'status': status,
    // EXCLUDE 'image': it’s/file later
  };
}
