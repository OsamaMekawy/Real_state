import 'package:flutter/material.dart';
import 'package:realstate/Modules/Details/productDetails/list_of_products.dart';
import 'package:realstate/core/compounts.dart';

class PhoneDetails extends StatefulWidget {
  const PhoneDetails({Key? key}) : super(key: key);

  @override
  State<PhoneDetails> createState() => _PhoneDetailsState();
}

class _PhoneDetailsState extends State<PhoneDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          title:  Text("موبايلات , تابلت , اكسسوارات",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),) ,
          leading: IconButton(icon: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 25,), onPressed: () { Navigator.pop(context); },)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 210.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 10,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("موبايلات",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("تابلت ",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("اكسسوارات موبايلات , تابلت",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("خطوط موبايل",style: TextStyle(fontSize: 18,color: Colors.black),) ,),


            ],
          ),
        ),
      ),
    );
  }
}
