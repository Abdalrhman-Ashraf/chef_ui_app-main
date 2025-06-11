class AddMeal {
	String? name;
	String? description;
	String? price;
	String? offerPrice;
	String? image;
	String? preparationTime;
	String? categoryId;
	String? status;

	AddMeal({
		this.name, 
		this.description, 
		this.price, 
		this.offerPrice, 
		this.image, 
		this.preparationTime, 
		this.categoryId, 
		this.status, 
	});

	factory AddMeal.fromJson(Map<String, dynamic> json) => AddMeal(
				name: json['name'] as String?,
				description: json['description'] as String?,
				price: json['price'] as String?,
				offerPrice: json['offer_price'] as String?,
				image: json['image'] as String?,
				preparationTime: json['preparation_time'] as String?,
				categoryId: json['category_id'] as String?,
				status: json['status'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'name': name,
				'description': description,
				'price': price,
				'offer_price': offerPrice,
				'image': image,
				'preparation_time': preparationTime,
				'category_id': categoryId,
				'status': status,
			};
}
