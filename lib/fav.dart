import 'package:emelat/CategoryProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCatogry extends StatefulWidget {
  @override
  State<MyCatogry> createState() => _MyCatogryState();
}

class _MyCatogryState extends State<MyCatogry> {
  @override
  void initState() {
    Provider.of<CategoryProvider>(context, listen: false).getAllCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(builder: (context, categProv, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
              child: Text('CateGories',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 27.0))),
          leading: Center(
              child: Icon(
            Icons.category,
            size: 33.0,
          )),
        ),
        body: ListView.builder(
            itemCount: categProv.category!.data!.data?.length,
            itemBuilder: (context, index) {
              return /* categProv.category!.data!.data.isEmpty?Center(child:CircularProgressIndicator(color: Colors.red)):*/
                  Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        categProv.category!.data!.data![index].image.toString(),
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Text(
                      categProv.category!.data!.data![index].name.toString(),
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              );
            }),
      );
    });
  }
}
