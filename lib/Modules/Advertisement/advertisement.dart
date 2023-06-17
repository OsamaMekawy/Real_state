import 'package:flutter/material.dart';
import 'package:realstate/Modules/layout/layOut.dart';
import 'package:realstate/core/compounts.dart';

class ADsScreen extends StatefulWidget {
  const ADsScreen({Key? key}) : super(key: key);

  @override
  State<ADsScreen> createState() => _ADsScreenState();
}

class _ADsScreenState extends State<ADsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
         // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 20),
              child: Text("اعلاناتى",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 12,),
            Container(
                height: 550,

                child: DefaultTabController(
                  length: 3,

                  child: Column(
                    children: [
                      TabBar(


                        tabs: [

                          Tab(


                            child:  Text("المفضلة", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black

                            )
                            ),
                          ),
                          Tab(

                            child: Text("الابحاث المحفوظه", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black

                            )
                            ),
                          ),
                          Tab(

                            child: Text("الاعلانات", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black

                            )
                            ),
                          ),


                        ],

                        indicatorColor: Colors.red,


                        onTap: (index){


                        },

                      ),

                      Expanded(
                        child: TabBarView(
                            children: [

                              Center(
                                child: Text("ليس لديك اعلانات مفضلة حتى الان",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20,),
                                      Container(
                                          height: 130,
                                          width: 400,

                                          decoration: BoxDecoration(
                                            //   color: Colors.white,

                                              borderRadius: BorderRadius.circular(20)
                                          ),
                                          child: Image(image: AssetImage("images/statistics.png"),)
                                      ),
                                      SizedBox(height: 15,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 40.0),
                                        child: Text(" ليس لديك اى عمليات بحث محفوظه للأن"
                                            ,style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20.0),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Text("احفظ عمليات البحث المفضله لديك لترى جميع الاعلانات ",style: TextStyle(fontSize: 18,),),
                                              Text("الجديده التى تثير اهتمامك. يمكن الوصول الى جميع ",style: TextStyle(fontSize: 18,),),
                                              Text("عمليا البحث المحفظهالخاصه بك هنا, فى حسابك ",style: TextStyle(fontSize: 18,),),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15,),




                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20,),
                                  Container(
                                    height: 100,
                                    width: 600,

                                    decoration: BoxDecoration(
                                      color: Colors.grey[50],

                                      //  borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              GestureDetector(

                                                child: Container(
                                                  height: 40,
                                                  width: 97,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(color: Colors.black12),
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(right: 10.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Text("كل الاعلانات",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                onTap: (){},
                                              ),
                                              SizedBox(width: 8,),
                                              GestureDetector(
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
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Text("اختيارات",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                                        Icon(Icons.align_horizontal_right_rounded,color: Colors.black,size: 15,),

                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                onTap: (){},
                                              ),


                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                child: Row(
                                                  children: [
                                                    IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_left,color: Colors.blue,)),

                                                    TextButton(onPressed: (){}, child: Text("عرض الباقات",style: TextStyle(fontSize: 18,color: Colors.blue),))
                                                  ],
                                                ),
                                                onTap: (){},
                                              ),
                                              Spacer(),
                                              Text("خصم كبير على الباقات",style: TextStyle(fontSize: 18,),)
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 100,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 70.0,),
                                    child: Text("ليس لديك اعلانات تتوافق مع اختيارك",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                  )




                                ],
                              ),

                            ]
                        ),
                      )
                    ],
                  ),
                ),
            ),
          ],
        ),
      )
    );
  }
}