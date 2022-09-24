import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_SCREEN.dart';

class Profile  extends StatelessWidget{
  var formKey=GlobalKey<FormState>();
  bool ShowPassword=true;
  var EmailController=TextEditingController();
  var passwordController=TextEditingController();
  var PhoneController=TextEditingController();
  var FirstController=TextEditingController();
  var LastController=TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       backgroundColor: Colors.red,
       title: Text('Profile',style: TextStyle(fontWeight: FontWeight.bold),),




     ) ,
     body:SingleChildScrollView(
       child: Form(
         key: formKey,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Stack(

               children: [
                 Container(
                // color: Colors.black12,
                   height: 150.0,
                   width: MediaQuery.of(context).size.width,
                 ),
                 Positioned(
                   top: 30.0,
                   left: 150.0,
                   child: CircleAvatar(
                     backgroundColor: Colors.red,
                     radius: 60.0,

                   ),
                 )
                 , Positioned(
                   top: 34.0,
                   left: 155.0,
                   child: CircleAvatar(
                     backgroundColor: Colors.white,
                     backgroundImage: NetworkImage("https://clipground.com/images/ktk-accountants-clipart-7.png"),

                     radius:55.0,
                   ),
                 ),
                 Positioned(
                   top: 100.0,
                   left: 240.0,
                   child: CircleAvatar(
                     backgroundColor: Colors.red,
                     radius: 17.0,
                     child: Icon(Icons.edit,color: Colors.white),

                   ),
                 )
               ],
             ),
             Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right:10.0,left:5.0,top:10.0 ),
                  child: Container(
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(12.0),) ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.8),
                          child: Text("First Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),

                        ),
                        SizedBox(height: 2.0,)
                        ,Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 15.0),
                          child: TextFormField(
                              controller: FirstController,
                          decoration: InputDecoration(
                           border: OutlineInputBorder(borderRadius:BorderRadius.circular(7.0))),
                              validator: (String ? value){
                                if(value!.isEmpty){
                                  return"Enter Your First Name,Please";
                                }
                                return null;
                              }
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right:5.0,left:10.0,top:10.0 ),
                  child: Container(
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(12.0),color: Colors.redAccent[50],) ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.8),
                          child: Text("Last Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),

                        ),
                        SizedBox(height: 2.0,)
                        ,Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 15.0),
                          child: TextFormField(
                              controller: LastController,
                              validator: (String ? value){
                           if(value!.isEmpty){
                            return"Enter Your Last Name,Please";
                                   }
                                       return null;
                                        }
                              ,decoration: InputDecoration(
                                  border: OutlineInputBorder( borderRadius:BorderRadius.circular(7.0)))
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
             SizedBox(height: 10.0,),
             Padding(
               padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 15.0),
               child: Container(
                 decoration:BoxDecoration(borderRadius: BorderRadius.circular(12.0),color: Colors.redAccent[50],) ,

                 width: double.infinity,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 8.8),
                       child: Text("Email",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                     ),
                     Padding(
                   padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 15.0),
                   child: TextFormField( controller: EmailController,
                       validator: (String ? value){
                         if(value!.isEmpty){
                           return"Enter Your Email ,Please";
                         }
                         return null;
                       }
                     ,decoration: InputDecoration(

                         border: OutlineInputBorder(borderRadius:BorderRadius.circular(7.0)))),
                 ),


                   ],

                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 15.0),
               child: Container(
                 decoration:BoxDecoration(borderRadius: BorderRadius.circular(12.0),color: Colors.redAccent[50],) ,

                 width: double.infinity,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 8.8),
                       child: Text("Phone Number",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 15.0),
                       child: TextFormField(
                           controller:PhoneController,
                           validator: (String ? value){
                             if(value!.isEmpty){
                               return"Enter Your Phone Number,Please";
                             }
                             return null;
                           }
                           ,decoration: InputDecoration(
                               border: OutlineInputBorder(borderRadius:BorderRadius.circular(7.0)))),
                     ),


                   ],

                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 15.0),
               child: Container(
                 decoration:BoxDecoration(borderRadius: BorderRadius.circular(12.0),color: Colors.redAccent[50],) ,

                 width: double.infinity,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 8.8),
                       child: Text("Password",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 15.0),
                       child: TextFormField(
                           controller: passwordController,
                           validator: (String ? value){
                             if(value!.isEmpty){
                               return"Enter Your Password ,Please";
                             }
                             return null;
                           }
                           ,decoration: InputDecoration(
                               border: OutlineInputBorder(borderRadius:BorderRadius.circular(7.0)))),
                     ),


                   ],

                 ),
               ),
             ),
               Container(
               color: Colors.red,
               width: double.infinity,
                 // color: Colors.blue,
                child: TextButton(onPressed: (){
                  if(formKey.currentState!.validate()){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>HomeScreen()));
                  print(FirstController.text);
                  print(LastController.text);
                  print(EmailController.text);
                  print(PhoneController.text);
                  print(passwordController.text);
                }}, child: Text("Profile",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30.0,color: Colors.white),)),)
           ],
         ),
       ),
     ),




   );
  }
}