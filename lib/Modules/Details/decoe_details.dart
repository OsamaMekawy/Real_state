import 'package:flutter/material.dart';
import 'package:realstate/core/compounts.dart';

import 'productDetails/list_of_products.dart';

class DecoreDetails extends StatefulWidget {
  const DecoreDetails({Key? key}) : super(key: key);

  @override
  State<DecoreDetails> createState() => _DecoreDetailsState();
}

class _DecoreDetailsState extends State<DecoreDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          title:  Text("اثاث - منزل ديكور",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),) ,
          leading: IconButton(icon: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 25,), onPressed: () { Navigator.pop(context); },)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 230.0),
          child: GestureDetector(
            onTap: (){},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 10,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("الحمام ",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("غرفه نوم",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("غرفه نوم",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("اقمشه ستائر سجاد",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("حديقه و اماكن خارجيه",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("ديكورات منزل",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("مطبخ - ادوا مطبخ",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("اضاءه",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("غرفه معيشه",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("اثاث متعدد اخر",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
