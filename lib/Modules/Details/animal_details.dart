import 'package:flutter/material.dart';
import 'package:realstate/Modules/Details/productDetails/list_of_products.dart';
import 'package:realstate/core/compounts.dart';

class AnimalDitails extends StatefulWidget {
  const AnimalDitails({Key? key}) : super(key: key);

  @override
  State<AnimalDitails> createState() => _AnimalDitailsState();
}

class _AnimalDitailsState extends State<AnimalDitails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          title:  Text("حيانات اليفه و اكسسواراتها ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),) ,
          leading: IconButton(icon: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 25,), onPressed: () { Navigator.pop(context); },)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 150.0),
          child: GestureDetector(
            onTap: (){},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 10,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("طيور - حمام",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text(" قطط",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("كلاب",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){ navigateTo(context, ListOfProducts());}, child: Text("حيوانات اليفه اخرى",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){ navigateTo(context, ListOfProducts());}, child: Text("اكسسوارات - منتجات عنايه بالحيوان",style: TextStyle(fontSize: 18,color: Colors.black),) ,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
