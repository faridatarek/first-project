import 'dart:ffi';

import 'package:emelat/LoginProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_SCREEN.dart';
import 'registerPage.dart';

class LoGin extends StatefulWidget {

  @override
  State<LoGin> createState() => _LoGinState();

}

class _LoGinState extends State<LoGin> {
var formKey=GlobalKey<FormState>();
bool showPassword=true;
var emailController=TextEditingController();
var passwordController=TextEditingController();
  @override
  void initState() {
    Provider.of<LoginProvider>(context, listen: false);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Padding(
        padding: const EdgeInsets.symmetric(horizontal:10,vertical:60),
    child: SingleChildScrollView(
       child: Form(
         key: formKey,
         child: Column(

           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(height:140.0,
                 width:double.infinity,
                 alignment: Alignment.center
                 ,child: Image(image:NetworkImage("https://www.pngarts.com/files/3/Ecommerce-Shopping-Cart-Transparent-Image.png")))
             ,Text("LOGIN",style: TextStyle(fontSize: 30.0,fontWeight:FontWeight.w500,color: Colors.red[900 ]),),
             SizedBox(height:2.0,),
             Text("Login now to browse our hot offers",style: TextStyle(fontSize:18.0,fontWeight:FontWeight.w500,color: Colors.black38)),
             SizedBox(height:15.0,),
             TextFormField(
                 controller: emailController,
                 decoration: InputDecoration(
                 labelText: "Email",
                 border: OutlineInputBorder(),prefixIcon: Icon(Icons.email_outlined)
             ),keyboardType: TextInputType.emailAddress,
               validator: (String ? value){
               if(value!.isEmpty){
                 return"Enter Your Email Please";
               }
               return null;
               }
             )
             ,SizedBox(height:15.0,),
             TextFormField(
               controller: passwordController,
             obscureText: showPassword,decoration: InputDecoration(
                 labelText: "Password",
                 border: OutlineInputBorder(),prefixIcon: Icon(Icons.lock),

              suffixIcon: IconButton(onPressed: (){
                 setState(() {
                   showPassword =!showPassword;
                 });
               },  icon:showPassword?(Icon(Icons.visibility)):(Icon(Icons.visibility_off)))
             ),keyboardType: TextInputType.visiblePassword,
                 validator: (String ? value){
                   if(value!.isEmpty){
                     return"The password is requird";
                   }
                   return null;
                 }),
             SizedBox(height:30.0,),
             Consumer< LoginProvider>(
               builder: (context, logProv, child) {
                 return  Center(
                   child: Container(
                     decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(15.0),color: Colors.red,),
                     height:45.0,width:230.0,
                     // color: Colors.blue,
                     child: TextButton(onPressed: (){
                       if(formKey.currentState!.validate()){
                        logProv.login(emailController.text, passwordController.text).then((value) {
                          if(logProv.loginModel!.status==false){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(logProv.loginModel!.message.toString(),style: TextStyle(fontSize:20,
                            )),
                            duration: Duration(seconds: 2),backgroundColor: Colors.purple,));

                          }
                          else{ Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) =>HomeScreen()));}
                        });

                       }
                     }, child: Text("Login",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:22.0,),)),

                   ),
                 );
               },


             ),
             SizedBox(height:20.0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Don't have an account ?",style: TextStyle(fontSize: 20.0),)

                 ,TextButton(onPressed: (){
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) =>Register()));


                 }, child: Text("Register",style: TextStyle(fontSize: 20.0,color: Colors.red),))
               ],
             )

           ],

         ),
       ),
    )
    ));
  }
  }