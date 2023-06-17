import 'package:flutter/material.dart';
import 'package:realstate/Modules/Details/productDetails/list_of_products.dart';
import 'package:realstate/core/compounts.dart';

class RealStateDetails extends StatefulWidget {
  const RealStateDetails({Key? key}) : super(key: key);

  @override
  State<RealStateDetails> createState() => _RealStateDetailsState();
}

class _RealStateDetailsState extends State<RealStateDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          title:  Text("عقارات",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),) ,
          leading: IconButton(icon: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 25,), onPressed: () { Navigator.pop(context); },)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 230.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 10,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("شقق و دوبلكس للبيع",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("شقق و دوبلكس  للايجار",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("فلل للايجار",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("فلل للبيع",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("عقارات مصايف لبيع",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("عقارات مصايف للايجار",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("عقار تجارى للبيع",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("عقار تجارى للايجار",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("مبانى واراضى",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),

            ],
          ),
        ),
      ),
    );
  }
}
