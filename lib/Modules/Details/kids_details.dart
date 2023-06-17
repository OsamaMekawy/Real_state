import 'package:flutter/material.dart';

import '../../core/compounts.dart';
import 'productDetails/list_of_products.dart';

class KidsDetails extends StatefulWidget {
  const KidsDetails({Key? key}) : super(key: key);

  @override
  State<KidsDetails> createState() => _KidsDetailsState();
}

class _KidsDetailsState extends State<KidsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          title:  Text(" مستلزمات اطفال  ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),) ,
          leading: IconButton(icon: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 25,), onPressed: () { Navigator.pop(context); },)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 160.0),
          child: GestureDetector(
            onTap: (){},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 10,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("عنايه - صحه الطفل و الام",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text(" ملابس اطفال",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("ادوات تغذيه للطفل",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("سراي - عربات - ادوات تنقل بالطفل",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("العاب اطفال ",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("مستلزمات اطفال اخرى",style: TextStyle(fontSize: 18,color: Colors.black),) ,),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
