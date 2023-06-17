import 'package:flutter/material.dart';
import 'package:realstate/Modules/Advertisement/advertisement.dart';
import 'package:realstate/Modules/Details/Electronic_details.dart';
import 'package:realstate/Modules/Details/Jobs_deails.dart';
import 'package:realstate/Modules/Details/animal_details.dart';
import 'package:realstate/Modules/Details/car_details.dart';
import 'package:realstate/Modules/Details/decoe_details.dart';
import 'package:realstate/Modules/Details/dress_details.dart';
import 'package:realstate/Modules/Details/factory_details.dart';
import 'package:realstate/Modules/Details/hobby_details.dart';
import 'package:realstate/Modules/Details/kids_details.dart';
import 'package:realstate/Modules/Details/phone_dtails.dart';
import 'package:realstate/Modules/Details/real_state_details.dart';
import 'package:realstate/Modules/Details/sevices_details.dart';
import 'package:realstate/core/compounts.dart';

class SaleScreen extends StatefulWidget {
  const SaleScreen({Key? key}) : super(key: key);

  @override
  State<SaleScreen> createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text("What are you offering?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),) ,
        leading: IconButton(icon: Icon(Icons.close,color: Colors.black,size: 25,),onPressed: (){navigateTo(context, ADsScreen());},),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [

            SizedBox(height: 15,),
            InkWell(
             onTap: (){navigateTo(context, CarDetails());},
              child: ListTile(

                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red.shade50
                  ),
                  child: Image.asset("images/car.png",color: Colors.red,),
                ),
                title: Text("عربيات وقطع غيار",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black,),

              ),
            ),
            Divider(),
            InkWell(
               onTap: (){navigateTo(context, RealStateDetails());},
              child: ListTile(

                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red.shade50
                  ),
                  child: Image.asset("images/property.png",color: Colors.red,),
                ),
                title: Text("عقارات  ",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black,),

              ),
            ),
            Divider(),
            InkWell(
               onTap: (){navigateTo(context, PhoneDetails());},
              child: ListTile(

                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red.shade50
                  ),
                  child: Image.asset("images/mobile-phone.png",color: Colors.red,),
                ),
                title: Text("  موبايلات",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black,),

              ),
            ),
            Divider(),
            InkWell(
               onTap: (){navigateTo(context, JobsDetails());},
              child: ListTile(

                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red.shade50
                  ),
                  child: Image.asset("images/businessman.png",color: Colors.red,),
                ),
                title: Text("  وظائف",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black,),

              ),
            ),
            Divider(),
            InkWell(
               onTap: (){navigateTo(context, EectronicDetails());},
              child: ListTile(

                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red.shade50
                  ),
                  child: Image.asset("images/responsive-design.png",color: Colors.red,),
                ),
                title: Text("  اجهزة الكترونيه",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black,),

              ),
            ),
            Divider(),
            InkWell(
               onTap: (){navigateTo(context, DecoreDetails());},
              child: ListTile(

                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red.shade50
                  ),
                  child: Image.asset("images/house-decoration.png",color: Colors.red,),
                ),
                title: Text("اثاث وديكور",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black,),

              ),
            ),
            Divider(),
            InkWell(
               onTap: (){
                 navigateTo(context, DrssDtails());
                 },
              child: ListTile(

                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red.shade50
                  ),
                  child: Image.asset("images/dress.png",color: Colors.red,),
                ),
                title: Text("الموضه و الجمال",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black,),

              ),
            ),
            Divider(),
            InkWell(
               onTap: (){navigateTo(context, AnimalDitails());},
              child: ListTile(

                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red.shade50
                  ),
                  child: Image.asset("images/dog.png",color: Colors.red,),
                ),
                title: Text("حيوانات  اليفة",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black,),

              ),
            ),
            Divider(),
            InkWell(
               onTap: (){navigateTo(context, KidsDetails());},
              child: ListTile(

                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red.shade50
                  ),
                  child: Image.asset("images/hair-brush.png",color: Colors.red,),
                ),
                title: Text("مستلزمات اطفال",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black,),

              ),
            ),
            Divider(),
            InkWell(
               onTap: (){navigateTo(context, HobbyDetails());},
              child: ListTile(

                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red.shade50
                  ),
                  child: Image.asset("images/bike.png",color: Colors.red,),
                ),
                title: Text("هوايات",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black,),

              ),
            ),
            Divider(),
            InkWell(
               onTap: (){navigateTo(context, FactoryDetails());},
              child: ListTile(

                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red.shade50
                  ),
                  child: Image.asset("images/factory.png",color: Colors.red,),
                ),
                title: Text("تجاره و صناعة",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black,),

              ),
            ),
            Divider(),
            InkWell(
               onTap: (){navigateTo(context, ServicesDetails());},
              child: ListTile(

                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red.shade50
                  ),
                  child: Image.asset("images/people.png",color: Colors.red,),
                ),
                title: Text("خدمات",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black,),

              ),
            ),
            SizedBox(height: 10,)


          ],
        ),
      )
    );
  }
}
