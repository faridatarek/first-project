import 'package:flutter/material.dart';

class prandPic {
//late final Widget picture  ;
prandPic({required this.picture});
 String  picture;
}
class ProduCts {
String proDetails;
String prandName;
String realPrice;
String oldPrice;
 String  image;
ProduCts({required this.image,required this.oldPrice,required this.prandName,required this.proDetails,required this.realPrice});
}

/*
class prandicons extends StatelessWidget{
  List<prandPic>pic=[
    prandPic(picture: Image(image:NetworkImage("https://th.bing.com/th/id/OIP.gU-LyqDD4sApdSO1OvZWowHaHa?pid=ImgDet&rs=1"))),
    prandPic(picture: Image(image:NetworkImage("https://logospng.org/download/apple/logo-apple-2048.png"))),
    prandPic(picture: Image(image:NetworkImage("https://images-na.ssl-images-amazon.com/images/G/33/img15/office-products/brands/hp.jpg"))),
    prandPic(picture: Image(image:NetworkImage("https://th.bing.com/th/id/OIP.vsClmnLOu77_uaZLzIvwxQHaEt?pid=ImgDet&w=535&h=340&rs=1"))),

  ];
  @override
  Widget build(BuildContext context) {

   return  Row(
     children: [
       CircleAvatar(
         radius:30.0,
         backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.gU-LyqDD4sApdSO1OvZWowHaHa?pid=ImgDet&rs=1"),
       ),
       SizedBox(width: 6.0,),
       CircleAvatar(
         radius:30.0,
         backgroundImage: ${pic.picture}),
       ),
       SizedBox(width: 6.0,),
       CircleAvatar(
         radius:30.0,
         backgroundImage: NetworkImage("https://images-na.ssl-images-amazon.com/images/G/33/img15/office-products/brands/hp.jpg"),
       ),
       SizedBox(width:6.0,),
       CircleAvatar(
         radius:30.0,
         backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.vsClmnLOu77_uaZLzIvwxQHaEt?pid=ImgDet&w=535&h=340&rs=1"),
       )
     ] ,
   );
  }

}*/
