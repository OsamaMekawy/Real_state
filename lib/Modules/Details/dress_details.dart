import 'package:flutter/material.dart';

import '../../core/compounts.dart';
import 'productDetails/list_of_products.dart';

class DrssDtails extends StatefulWidget {
  const DrssDtails({Key? key}) : super(key: key);

  @override
  State<DrssDtails> createState() => _DrssDtailsState();
}

class _DrssDtailsState extends State<DrssDtails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          title:  Text("الموضه و الجمال ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),) ,
          leading: IconButton(icon: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 25,), onPressed: () { Navigator.pop(context); },)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: GestureDetector(
            onTap: (){},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 10,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("ملابس حريمى",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("ملابس رجالى",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("اكسسوارات , مستحضرات اتتحميل , عنايه شخصيه حريمى ",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("اكسسوارات - عنايه شخصيه رجالى",style: TextStyle(fontSize: 18,color: Colors.black),) ,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
