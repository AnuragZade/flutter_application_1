class UserModel {
  final String discountCode;
  final String status;
  final Store store;
  final BrandProduct brandProduct;

  UserModel({
    required this.discountCode,
    required this.status,
    required this.store,
    required this.brandProduct,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      discountCode: json['discountCode'],
      status: json['status'],
      store: Store.fromJson(json['store']),
      brandProduct: BrandProduct.fromJson(json['brandproduct']),
    );
  }
}

class Store {
  final String id;
  final String name;
  final String logo;

  Store({required this.id, required this.name, required this.logo});

  factory Store.fromJson(Map<String, dynamic> json) {
    return Store(
      id: json['_id'] ?? '',
      name: json['name'] ?? 'No Name',
      logo: json['logo'] ?? '',
    );
  }
}

class BrandProduct {
  final String name;
  // final String img;
  final int customer_cashback;

  BrandProduct({required this.name, required this.customer_cashback});

  factory BrandProduct.fromJson(Map<String, dynamic> json) {
    return BrandProduct(
      name: json['name'] ?? 'No Brand Name',
      customer_cashback: json["customer_cashback"] ?? '',
    );
  }
}
