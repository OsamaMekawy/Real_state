import 'package:flutter/material.dart';
import 'package:realstate/Modules/Home/home.dart';
import 'package:realstate/Modules/layout/layOut.dart';
import 'package:realstate/core/compounts.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 20),
              child: Text("المحادثات",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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


                            child:  Text("بيع", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black

                            )
                            ),
                          ),
                          Tab(

                            child: Text("شراء", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black

                            )
                            ),
                          ),
                          Tab(

                            child: Text("الكل", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black

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
                                        child: Image(image: AssetImage("images/chat.png"),)
                                      ),
                                      SizedBox(height: 15,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 100.0),
                                        child: Text("لسه مافيش رسائل ؟",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 80.0),
                                        child: Text("!دور على حاجه بتحبها وابدا المحادثه ",style: TextStyle(fontSize: 18,),),
                                      ),
                                      SizedBox(height: 15,),
                                      defult_Button(
                                          text: 'شوف احدث الاعلانات',
                                          function: (){
                                            navigateTo(context, LayoutScreen());
                                          },
                                        width: 400

                                      )



                                    ],
                                  ),
                                ),
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
                                          child: Image(image: AssetImage("images/chat.png"),)
                                      ),
                                      SizedBox(height: 15,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 100.0),
                                        child: Text("لسه مافيش رسائل ؟",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 80.0),
                                        child: Text("!دور على حاجه بتحبها وابدا المحادثه ",style: TextStyle(fontSize: 18,),),
                                      ),
                                      SizedBox(height: 15,),
                                      defult_Button(
                                          text: 'شوف احدث الاعلانات',
                                          function: (){},
                                          width: 400

                                      )



                                    ],
                                  ),
                                ),
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
                                          child: Image(image: AssetImage("images/chat.png"),)
                                      ),
                                      SizedBox(height: 15,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 100.0),
                                        child: Text("لسه مافيش رسائل ؟",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 80.0),
                                        child: Text("!دور على حاجه بتحبها وابدا المحادثه ",style: TextStyle(fontSize: 18,),),
                                      ),
                                      SizedBox(height: 15,),
                                      defult_Button(
                                          text: 'شوف احدث الاعلانات',
                                          function: (){},
                                          width: 400

                                      )



                                    ],
                                  ),
                                ),
                              ),




                            ]
                        ),
                      )

                    ],
                  ),
                )
            ),

          ],
        ),
      )
    );
  }
}
