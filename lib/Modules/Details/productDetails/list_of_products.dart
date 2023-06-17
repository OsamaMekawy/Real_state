import 'package:flutter/material.dart';
import 'package:realstate/Modules/Details/car_details.dart';
import 'package:realstate/Modules/Details/productDetails/state_details.dart';
import 'package:realstate/core/compounts.dart';


class ListOfProducts extends StatefulWidget {
  const ListOfProducts({Key? key}) : super(key: key);

  @override
  State<ListOfProducts> createState() => _ListOfProductsState();
}

class _ListOfProductsState extends State<ListOfProducts> {
  bool nav = true;
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 20.0),
                     child: IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.keyboard_arrow_right,size: 30,color: Colors.black,)),
                   ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0,top: 30),
                    child: Container(
                      height: 40,
                      width: 350,
                      child: TextFormField(
                        controller: controller,
                        cursorColor: Colors.grey,
                        textAlign: TextAlign.start,

                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "بتدور على ايه ؟",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 18),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            contentPadding: EdgeInsets.all(5)

                        ),
                        style: TextStyle(color: Colors.black,fontSize: 18),
                        onChanged: (search){

                        },
                        onTap: (){
                          //     DataSearch(list: listSearch);
                        },

                      ),
                    ),
                  ),
                ],
              ),

              Scrollbar(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: GestureDetector(
                                child: Container(
                                  height: 40,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.red.shade100,
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.align_horizontal_right_rounded,color: Colors.black,size: 15,),
                                        Text("اختيارات",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),


                                      ],
                                    ),
                                  ),
                                ),
                                onTap: (){},
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 300,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [


                                        // SizedBox(width: 8,),
                                        GestureDetector(

                                          child: Container(
                                            height: 40,
                                            width: 111,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(color: Colors.black12),
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(right: 10.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text("جميع البلدان",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                                  Icon(Icons.keyboard_arrow_down)


                                                ],
                                              ),
                                            ),
                                          ),
                                          onTap: (){},
                                        ),



                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [


                                        SizedBox(width: 4,),
                                        GestureDetector(

                                          child: Container(
                                            height: 40,
                                            width: 111,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(color: Colors.black12),
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(right: 10.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text("سيارات للبيع",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                                  SizedBox(width: 3,),
                                                  Icon(Icons.close,size: 20,)


                                                ],
                                              ),
                                            ),
                                          ),
                                          onTap: (){},
                                        ),



                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0,left: 10),
                      child: Divider(color: Colors.black26,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text("الشركات المميزه",style: TextStyle(fontSize: 18,),),
                    ),
                    Container(
                      height: 150,
                      width: 500,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder:(context,index)=> buildModelCompany(),
                          separatorBuilder: (context,index)=>SizedBox(width: 6,),
                          itemCount: 10
                      ),
                    ),
                    SizedBox(height: 25,),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0,left: 10),
                      child: Divider(color: Colors.black26,),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text("اعلانات مميزه",style: TextStyle(fontSize: 18,),),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text("عرض المزيد",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),),
                            Icon(Icons.keyboard_arrow_left,color: Colors.red,)
                          ],
                        ),


                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 500,
                      child: ListView.separated(
                          itemBuilder:(context,index)=> buildModelProductOfCars(nav,context),
                          separatorBuilder:(context,index)=> SizedBox(height: 10,),
                          itemCount: 20
                      ),
                    )
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }

  Widget buildModelCompany()=> Container(
      height: 50,
      width: 120,
      child: Image(image: AssetImage(" images/motors.png"),height: 50,width: 50,));
}

Widget buildModelProductOfCars(bool nav, context)=> GestureDetector(
  child: Container(
      height: 205,
      width: 405,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black12)
      ),
      child: Row(
        children: [
          Container(
            height: 300,
            width: 150,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                image: DecorationImage(
                    image: AssetImage("images/Vela.png"),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("1,000,000 ج.م",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18,color: Colors.red),),
                  SizedBox(width: 20,),
                  //Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 60.0),
                    child: IconButton(onPressed: (){
                      // setState(() {
                      //   nav =! nav;
                      // });
                    }, icon: CircleAvatar(
                        radius: 15,
                        backgroundColor: nav ? Colors.red : Colors.black,
                        child: Icon(
                          Icons.favorite_border,
                          size: 16,
                          color: Colors.white,
                        )
                    )
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Text("للبيع باميز قطعه ف Town villa ...",style: TextStyle(fontSize: 18,color: Colors.black),),
              SizedBox(height: 7,),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text("ماونتن فيو تشيل اوت بارك ,6 اكتوبر",style: TextStyle(fontSize: 15),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text("2023 - جديد   ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text("منذ 3 ايام",style: TextStyle(fontSize: 15),),
                  ),
                  SizedBox(width: 130,),
                  Image(image: AssetImage("images/motors.png"),height: 50,width: 50,)
                ],
              )


            ],
          )
        ],
      )
  ),
  onTap: (){
    navigateTo(context, StateDetails());
  },
);

