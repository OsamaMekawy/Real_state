import 'package:flutter/material.dart';
import 'package:realstate/Modules/Details/productDetails/list_of_products.dart';
import 'package:realstate/core/compounts.dart';

class JobsDetails extends StatefulWidget {
  const JobsDetails({Key? key}) : super(key: key);

  @override
  State<JobsDetails> createState() => _JobsDetailsState();
}

class _JobsDetailsState extends State<JobsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          title:  Text("وظائف",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),) ,
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
                }, child: Text("محاسبه و بنوك",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("هندسه",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("فلل للايجار",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("مصممين ",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("خدمة عملاء ",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("عمال و فيين",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("اداره و اعمال استشاريه",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("سائقين - توصيل",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("تعليم",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("موارد بشريه",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("سياحه و سفر",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("تكنولوجيا و معلومات",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("تسويق و علاقات عامة",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("طب - صح - تمريض",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("مبيعات",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("سكرتارية",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),

                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("حرسات و امن ",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("محامين- شئون قانونيه",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  navigateTo(context, ListOfProducts());
                }, child: Text("وظيف اخرى",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

