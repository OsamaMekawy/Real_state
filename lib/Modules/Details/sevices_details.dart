import 'package:flutter/material.dart';

import '../../core/compounts.dart';
import 'productDetails/list_of_products.dart';

class ServicesDetails extends StatefulWidget {
  const ServicesDetails({Key? key}) : super(key: key);

  @override
  State<ServicesDetails> createState() => _ServicesDetailsState();
}

class _ServicesDetailsState extends State<ServicesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          title:  Text("خدمات",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),) ,
          leading: IconButton(icon: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 25,), onPressed: () { Navigator.pop(context); },)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 260.0),
          child: GestureDetector(
            onTap: (){},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 10,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("خدمات شركات",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("سيارات",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("حفلات - مناسبات",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("صحة و جمال",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("صيانه",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("طبيه",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("توصيل و شحن",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("حيوانات اليفة",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("دروس تعليم",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("خدمات اخرى",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
