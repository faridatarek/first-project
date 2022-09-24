import 'package:flutter/material.dart';
import 'ProductModel.dart';
import 'ProfileSCreen.dart';
import 'add.dart';
import 'fav.dart';
import 'home.dart';

class HomeScreen extends StatefulWidget {
  State<HomeScreen> createState() => _HomeScreenState();
}

@override
class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List<Widget> PagesName = [MyHome(), MyCatogry(), Profile()];
  List<prandPic> pic = [
    prandPic(
        picture:
            "https://th.bing.com/th/id/OIP.gU-LyqDD4sApdSO1OvZWowHaHa?pid=ImgDet&rs=1"),
    prandPic(
        picture: "https://logospng.org/download/apple/logo-apple-2048.png"),
    prandPic(
        picture:
            "https://images-na.ssl-images-amazon.com/images/G/33/img15/office-products/brands/hp.jpg"),
    prandPic(
        picture:
            "https://th.bing.com/th/id/OIP.vsClmnLOu77_uaZLzIvwxQHaEt?pid=ImgDet&w=535&h=340&rs=1"),
  ];
  List<ProduCts> show = [
    ProduCts(
        image:
            "https://laptopvang.com/wp-content/uploads/2020/11/macbook_Air_2020_m1-2.jpg",
        oldPrice: "EGP 45,000",
        prandName: "Apple",
        proDetails: "Apple MacBook Pro",
        realPrice: "EGP 40,000"),
    ProduCts(
        image:
            "https://hitech-world.net/wp-content/uploads/2020/04/k976GJLUC9iNfC5orutNqk-905x613.jpg",
        oldPrice: "EGP 33,000",
        prandName: "Dell",
        proDetails: "Dell XPS 15",
        realPrice: "EGP 30,000"),
    ProduCts(
        image:
            "https://dhtrust.org/wp-content/uploads/2021/04/hppavilion15_5-100827768-large.3x2.jpg",
        oldPrice: "EGP 30,000",
        prandName: "Hp",
        proDetails: "HP Pavilion Gaming Laptop",
        realPrice: "EGP 27,000"),
    ProduCts(
        image:
            "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6180/6180101ld.jpg",
        oldPrice: "EGP 26,000",
        prandName: "Samsung",
        proDetails: "Samsung - Notebook 9 Pro 13.3",
        realPrice: "EGP 24,000"),
    ProduCts(
        image:
            "https://laptopvang.com/wp-content/uploads/2020/11/macbook_Air_2020_m1-2.jpg",
        oldPrice: "EGP 45,000",
        prandName: "Apple",
        proDetails: "Apple MacBook Pro",
        realPrice: "EGP 40,000"),
  ];
  // "https://logospng.org/download/apple/logo-apple-2048.png"
  //String PicUrl= "${pic[currentIndex].picture}";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //   appBar: AppBar(
        //      backgroundColor: Colors.white,
        //       leading:Row(   mainAxisSize: MainAxisSize.min,
        //     children: [
        //     Expanded(
        //       child: IconButton(icon: Icon(Icons.compare_arrows,size: 28.0,color:Colors.grey,
        // ), onPressed: () {},
        //
        //       ),
        //     ) ,
        //       SizedBox(width: 10.0,),
        //       Expanded(
        //         child: IconButton(icon: Icon(Icons.filter_alt,size: 28.0,color:Colors.grey,
        //         ), onPressed: () {},
        //
        //         ),
        //       )
        //     ],
        //   )
        //
        //   ),

        //flexibleSpace: SomeWidget(),

        /* bottomNavigationBar:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.home,size:30.0,color:Colors.grey,),
        SizedBox(width:13.0,),
        Icon(Icons.arrow_back_ios,size:30.0,color:Colors.grey,)
        ,Text("1 of 5",style:TextStyle(color: Colors.grey,fontSize:20.0,fontWeight: FontWeight.bold),),
        Icon(Icons.arrow_forward_ios,size:30.0,color:Colors.grey,)

      ],
    )*/
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black54,
            selectedItemColor: Colors.red,
            backgroundColor: Colors.white,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.screen_search_desktop_rounded), label: "Category"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "MY Profile")
            ]),
        body: Center(child: PagesName[currentIndex]));
  }
}

/*
Widget prandicons ()  {
  List<prandPic>pic=[

    prandPic(picture: Image(image:NetworkImage("https://th.bing.com/th/id/OIP.gU-LyqDD4sApdSO1OvZWowHaHa?pid=ImgDet&rs=1"))),
    prandPic(picture: Image(image:NetworkImage("https://logospng.org/download/apple/logo-apple-2048.png"))),
    prandPic(picture: Image(image:NetworkImage("https://images-na.ssl-images-amazon.com/images/G/33/img15/office-products/brands/hp.jpg"))),
    prandPic(picture: Image(image:NetworkImage("https://th.bing.com/th/id/OIP.vsClmnLOu77_uaZLzIvwxQHaEt?pid=ImgDet&w=535&h=340&rs=1"))),

  ];

  return CircleAvatar(
    backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.gU-LyqDD4sApdSO1OvZWowHaHa?pid=ImgDet&rs=1"),
       radius:30.0,
 // backgroundImage:NetworkImage ("${pic.picture}"),
);
}*/
