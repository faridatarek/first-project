import 'dart:ffi';

import 'package:emelat/HomeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ProductModel.dart';
import 'home_SCREEN.dart';

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  void initState() {
    Provider.of<HomeProvider>(context, listen: false).getAllData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /*  List<prandPic>pic = [
      prandPic(
          picture: "https://th.bing.com/th/id/OIP.gU-LyqDD4sApdSO1OvZWowHaHa?pid=ImgDet&rs=1"),
      prandPic(
          picture: "https://th.bing.com/th/id/R.152599d4f66bb96a60a1e66f8b2bdeba?rik=muF7rLCI5vhmpg&pid=ImgRaw&r=0"),
      prandPic(
          picture: "https://images-na.ssl-images-amazon.com/images/G/33/img15/office-products/brands/hp.jpg"),
      prandPic(
          picture: "https://cdn.mosoah.com/wp-content/uploads/2019/11/21174105/samsung-logo-1000x768-1200x800-1024x683.jpg"),

    ];
    List<ProduCts>show=[
      ProduCts(image: "https://laptopvang.com/wp-content/uploads/2020/11/macbook_Air_2020_m1-2.jpg",
          oldPrice: "EGP 45,000",prandName: "Apple",proDetails:"Apple MacBook Pro",realPrice: "EGP 40,000" ),
      ProduCts(image: "https://hitech-world.net/wp-content/uploads/2020/04/k976GJLUC9iNfC5orutNqk-905x613.jpg",
          oldPrice: "EGP 33,000",prandName: "Dell",proDetails:"Dell XPS 15",realPrice: "EGP 30,000" ),
      ProduCts(image: "https://dhtrust.org/wp-content/uploads/2021/04/hppavilion15_5-100827768-large.3x2.jpg",
          oldPrice: "EGP 30,000",prandName: "Hp",proDetails:"HP Pavilion Gaming Laptop",realPrice: "EGP 27,000" ),
      ProduCts(image: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6180/6180101ld.jpg",
          oldPrice: "EGP 26,000",prandName: "Samsung",proDetails:"Samsung - Notebook 9 Pro 13.3",realPrice: "EGP 24,000" ),
      ProduCts(image: "https://laptopvang.com/wp-content/uploads/2020/11/macbook_Air_2020_m1-2.jpg",
          oldPrice: "EGP 45,000",prandName: "Apple",proDetails:"Apple MacBook Pro",realPrice: "EGP 40,000" ),

    ];*/

    return Consumer<HomeProvider>(
      builder: ((context, HomePov, child) {
        return HomePov.data==null?Center(child: CircularProgressIndicator(),):
        Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.red,
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.compare_arrows,
                        size: 28.0,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: IconButton(
                      
                      icon: Icon(
                        Icons.color_lens,
                        size: 28.0,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              )),
          body: Container(
            color: Colors.grey[300],
            child: Column(
              children: [
                /* Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: 65.0,
                child: ListView.separated(

                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CircleAvatar(
                        backgroundImage:
                        NetworkImage(pic[index].picture.toString()),
                        // NetworkImage("${pic[index].picture}")
                        radius: 30.0,
                        //backgroundImage:NetworkImage ("https://th.bing.com/th/id/OIP.gU-LyqDD4sApdSO1OvZWowHaHa?pid=ImgDet&rs=1"),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 6.0,),
                    itemCount: pic.length),
              ),
            ),*/
                Expanded(
                  child: ListView(children: [
                    Container(
                        height: MediaQuery.of(context).size.height,
                        child: GridView.builder(
                            padding: EdgeInsets.all(5),
                            itemCount: HomePov.data!.data!.products.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 6.0,
                                    childAspectRatio: .8,
                                    mainAxisSpacing: 15.0),
                            itemBuilder: (context, index) {
                              return HomePov.data!.data!.products.isEmpty
                                  ? Center(
                                      child: CircularProgressIndicator(
                                          color: Colors.red))
                                  : Container(
                                      width: 40.0,
                                      height: 10.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.all(
                                                Radius.circular(22.0)),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 120,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: NetworkImage(HomePov.data!
                                                  .data!.products[index].image
                                                  .toString()),
                                              // NetworkImage(
                                              //  "https://laptopvang.com/wp-content/uploads/2020/11/macbook_Air_2020_m1-2.jpg")),
                                            )),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.energy_savings_leaf,
                                                  size: 28.0,
                                                  color: Colors.white,
                                                ),
                                                Spacer(),
                                                Icon(
                                                  Icons.favorite_border,
                                                  size: 30.0,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            HomePov
                                                .data!.data!.products[index].id
                                                .toString(),
                                            //show[index].proDetails.toString(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 18.0,
                                            ),
                                          ),
                                          Text(
                                            HomePov.data!.data!.products[index]
                                                .Name
                                                .toString(),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                                fontSize: 16.0),
                                          ),
                                          SizedBox(
                                            height: 11.5,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      HomePov.data!.data!
                                                          .products[index].Price
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.black,
                                                          fontSize: 18.0),
                                                    ),
                                                    Text(
                                                      HomePov
                                                          .data!
                                                          .data!
                                                          .products[index]
                                                          .OldPrice
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.black26,
                                                          fontSize: 15.0,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 25.0,
                                              ),
                                              CircleAvatar(
                                                radius: 25.0,
                                                backgroundColor: Colors.red,
                                                child: Icon(
                                                  Icons.shopping_basket,
                                                  size: 25.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ));
                            })),
                  ]),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
/*
class changeColor with ChangeNotifier{
  Color appcolor=Colors.red;
  changeAppBar(){
    appcolor=Colors.amber;
    notifyListeners();
  }
}*/
