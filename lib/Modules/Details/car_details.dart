import 'package:flutter/material.dart';
import 'package:realstate/Modules/Lists/car_lis_two.dart';
import 'package:realstate/Modules/Lists/car_list.dart';
import 'package:realstate/core/compounts.dart';

import 'productDetails/list_of_products.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({Key? key}) : super(key: key);

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title:  Text("عربيات و قطع غيار",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),) ,
      leading: IconButton(icon: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 25,), onPressed: () { Navigator.pop(context); },)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 10,),
              TextButton(onPressed: (){
                navigateTo(context, CarList());
              }, child: Text("سيارات للبيع",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("سيارات للايجار",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("كاوتش , بطاريات , زيوت , وكماليات",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("قطع غيار سيارات",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, CarListTWO());
              }, child: Text("موتسيكلات و اكسسوارات",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                navigateTo(context, ListOfProducts());
              }, child: Text("مركبات بحريه",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){navigateTo(context, ListOfProducts());}, child: Text("اوتوبيسات , شاحنات نقل تقيل ووسائل نقل اخرى",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
              SizedBox(height: 15,),

            ],
          ),
        ),
      ),
    );
  }
}
