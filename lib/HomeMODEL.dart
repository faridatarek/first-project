class HomeModel{
  bool?status;
  HomeDataModel?data;
  HomeModel.fromjson(Map<String,dynamic>json){
    status=json['status'];
    data= HomeDataModel.fromJson(json['data']);
  }

}



class BannersModel{

  int? id;
  String? image;

  BannersModel.fromJson(Map<String,dynamic>json){
    id=json['id'];
    image=json['image'];
  }
}

class ProductsModel{
  int? id;
  String? Name;
  String? image;
  dynamic Price;
  dynamic OldPrice;
  dynamic Discount;
  ProductsModel.fromJson(Map<String,dynamic>json){
    id=json['id'];
    Name=json['name'];
    Price=json['price'];
    OldPrice=json['old_price'];
    Discount=json['discount'];
    image=json['image'];
  }
}

class   HomeDataModel{
  List<BannersModel>banners=[];
  List<ProductsModel>products=[];
  HomeDataModel.fromJson(Map<String,dynamic>json){
    json["banners"].forEach((element){
      banners.add(BannersModel.fromJson(element));
    });
    json["products"].forEach((element){
      products.add(ProductsModel.fromJson(element));
    });
  }
}