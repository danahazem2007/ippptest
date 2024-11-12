class PRODUCT {

  List<dynamic> data;

  PRODUCT({required this.data});

  factory PRODUCT.fromjson(Map<String,dynamic>json){
    return PRODUCT(data: json['data']['products']);
  }
}
