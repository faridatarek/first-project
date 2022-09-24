
import 'package:flutter/material.dart';

import 'home_SCREEN.dart';

class Register  extends StatefulWidget{
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var formKey=GlobalKey<FormState>();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var phoneController=TextEditingController();
  var nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
    AppBar(
    backgroundColor: Colors.red,elevation:7,
        title: Text("Products App",style: TextStyle(color:Colors.white,fontSize: 30.0),),
        centerTitle: true,
    )
        ,body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("REGISTER",style: TextStyle(fontSize: 30.0,fontWeight:FontWeight.w500),),
                  SizedBox(height:2.0,),
                  Text("REGISTER now to see our products",style: TextStyle(fontSize:18.0,fontWeight:FontWeight.w500,color: Colors.black38)),
                  SizedBox(height:15.0,),
                  TextFormField(
                    controller: nameController
                      ,decoration: InputDecoration(
                      labelText: "Name",
                      border:OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),prefixIcon: Icon(Icons.person)
                  ),keyboardType: TextInputType.name,
                      validator: (String ? value){
                        if(value!.isEmpty){
                          return"Enter Your Name,Please";
                        }
                        return null;
                      }
                  ),
                  SizedBox(height:15.0,),
                  TextFormField(
                    controller: emailController,
                      decoration: InputDecoration(
                    labelText: "Email",
                    border:OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),prefixIcon: Icon(Icons.email_outlined)
                ),keyboardType: TextInputType.emailAddress,
                      validator: (String ? value){
                        if(value!.isEmpty){
                          return"Enter Your Email, Please";
                        }
                        return null;
                      }
                  ),
                  SizedBox(height:15.0,),
                  TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),prefixIcon: Icon(Icons.lock),
                  ),keyboardType: TextInputType.number,
                      validator: (String ? value){
                        if(value!.isEmpty){
                          return"Password is required ";
                        }
                        return null;
                      }
                  ),
                  SizedBox(height:15.0,),
                  TextFormField(
                      controller: phoneController,
                      decoration: InputDecoration(
                      labelText: "phone",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),prefixIcon: Icon(Icons.phone_android)
                  ),keyboardType: TextInputType.phone,
                      validator: (String ? value){
                        if(value!.isEmpty){
                          return"phone Number is requird";
                        }
                        return null;
                      }
                  ),

                  Container(
                    decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20.0)),color:Colors.red ),

                margin: EdgeInsets.symmetric(horizontal:40,vertical: 50),
                    width: double.infinity,

                    child: TextButton(
                        onPressed: (){
                     if(formKey.currentState!.validate()) {
                       Navigator.pushReplacement(context,
                           MaterialPageRoute(builder: (context) =>
                               HomeScreen()));
                       print(nameController.text);
                       print(emailController.text);
                       print(passwordController.text);
                       print(phoneController.text);
                     }
                    }, child: Text("Register",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:26.0,),)),
                  )

                ] ),
            ),
          )

    )


    );
  }
}