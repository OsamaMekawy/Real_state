import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0,right: 10),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red[50],
                        borderRadius: BorderRadius.circular(50) ),
                      child: Center(child: Text("O",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: [
                          Text("Osama Mekawy",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 23,color: Colors.black),),
                          TextButton(onPressed: (){}, child: Text("عرض وتعديل الملف الشخصى ",style: TextStyle(fontSize: 18,color: Colors.black),))
                        ],
                      ),
                    )
                  ],
                ),
              ),
          SizedBox(height: 30,),
              InkWell(
                onTap: (){
                 // navigateTo(context, CarDetails());
                  },
                child: ListTile(

                  leading: Icon(Icons.credit_card,size: 30,color: Colors.black,),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("شراء الباقه المنخفضه",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("بيع اكثر وبشكل اسرع, وزود فرص ربحك من خلال الباقات",style: TextStyle(),),
                    ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_left,size: 40,color: Colors.black,),

                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  // navigateTo(context, CarDetails());
                },
                child: ListTile(

                  leading: Icon(Icons.folder_copy_outlined,size: 30,color: Colors.black,),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("الطلبات و معلومات الفوتره",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("الطلبات و الفواتير و الايصالات",style: TextStyle(),),
                    ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_left,size: 40,color: Colors.black,),

                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  // navigateTo(context, CarDetails());
                },
                child: ListTile(

                  leading: Icon(Icons.train_outlined,size: 30,color: Colors.black,),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("طلبات التوصيل",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("تتبع طلبات توصيل البيع و الشراء الخاصه بك",style: TextStyle(),),
                    ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_left,size: 40,color: Colors.black,),

                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  // navigateTo(context, CarDetails());
                },
                child: ListTile(

                  leading: Icon(Icons.settings,size: 30,color: Colors.black,),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("الاعدادات",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("الخصوصيه و اداره الحساب",style: TextStyle(),),
                    ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_left,size: 40,color: Colors.black,),

                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  // navigateTo(context, CarDetails());
                },
                child: ListTile(

                  leading: Icon(Icons.language_outlined,size: 30,color: Colors.black,),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("لغة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                    ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_left,size: 40,color: Colors.black,),

                ),
              ),
              Divider(),
          //  Container(
          //    height: 700,
          //    width: 500,
          //    child: Drawer(
          // backgroundColor: Colors.white,
          //     child: Directionality(
          //       textDirection: TextDirection.ltr,
          //       child: ListView(
          //         children: <Widget>[
          //           UserAccountsDrawerHeader(accountName: Text("Osama",style: TextStyle(fontSize: 20,color: Colors.black),),
          //             accountEmail: TextButton(onPressed: (){}, child: Text("عرض وتعديل الملف الشخصى",style: TextStyle(color: Colors.black,fontSize: 18),),),
          //             currentAccountPicture:GestureDetector(
          //               child: new CircleAvatar(
          //                 backgroundColor: Colors.red.shade50,
          //                 child: Icon(Icons.person,color: Colors.black,),
          //               ),
          //             ),
          //             decoration: BoxDecoration(
          //                 color: Colors.white
          //             ),
          //           ),
          //           Container(
          //             color: Colors.white,
          //             padding: EdgeInsets.only(right: 10,left: 10),
          //             child: Column(
          //               children: <Widget>[
          //                 InkWell(
          //                   onTap: (){
          //                   //  navigateTo(context, EnglandClubSummary());
          //                   },
          //                   child: ListTile(
          //                     title: Text("Dashboard",style: TextStyle(color: Colors.lightGreen,fontSize: 20),),
          //                     leading: Icon(Icons.category,color: Colors.lightGreen,),
          //
          //                   ),
          //                 ),
          //
          //
          //               ],
          //             ),
          //
          //           ),
          //           Container(
          //             color: Colors.white,
          //             padding: EdgeInsets.only(right: 10,left: 10),
          //             child: Column(
          //               children: <Widget>[
          //                 InkWell(
          //                   onTap: (){
          //                  //   navigateTo(context, GermanBundesLeague());
          //                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>new Category()));
          //                   },
          //                   child: ListTile(
          //                     title: Text("Matches",style: TextStyle(color: Colors.lightGreen,fontSize: 20),),
          //                     leading: Icon(Icons.calendar_today,color: Colors.lightGreen,),
          //
          //                   ),
          //                 ),
          //
          //
          //               ],
          //             ),
          //
          //           ),
          //
          //
          //
          //           Container(
          //             color: Colors.white,
          //             padding: EdgeInsets.only(right: 10,left: 10),
          //
          //             child: Column(
          //               children: <Widget>[
          //                 InkWell(
          //                   onTap: (){
          //                   //  navigateTo(context, UefaEurope());
          //                     //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorite()));
          //                   },
          //                   child: ListTile(
          //                     title: Text(" Players",style: TextStyle(color: Colors.lightGreen,fontSize: 20),),
          //                     leading: Icon(Icons.people_rounded,color: Colors.lightGreen,),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //
          //           ),
          //           Container(
          //             color: Colors.white,
          //             padding: EdgeInsets.only(right: 10,left: 10),
          //
          //             child: Column(
          //               children: <Widget>[
          //                 InkWell(
          //                   onTap: (){
          //                  //   navigateTo(context, EnglishPremierLeague());
          //                     //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Shopping()));
          //                   },
          //                   child: ListTile(
          //                     title: Text(" Teams",style: TextStyle(color: Colors.lightGreen,fontSize: 20),),
          //                     leading: Icon(Icons.security,color: Colors.lightGreen,),
          //
          //                   ),
          //                 ),
          //
          //               ],
          //             ),
          //
          //           ),
          //           Container(
          //             color: Colors.white,
          //             padding: EdgeInsets.only(right: 10,left: 10),
          //
          //             child: Column(
          //               children: <Widget>[
          //                 InkWell(
          //                   onTap: (){
          //                 //    navigateTo(context, Review());
          //                     //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tracking()));
          //                   },
          //                   child: ListTile(
          //                     title: Text(" Messages ",style: TextStyle(color: Colors.lightGreen,fontSize: 20),),
          //                     leading: Icon(Icons.message,color: Colors.lightGreen,),
          //
          //                   ),
          //                 ),
          //               ],
          //             ),
          //
          //           ),
          //           SizedBox(
          //             height: 60,
          //           ),
          //
          //           Container(
          //             color: Colors.white,
          //             padding: EdgeInsets.only(right: 10,left: 10),
          //
          //             child: Column(
          //               children: <Widget>[
          //                 InkWell(
          //                   onTap: (){
          //                    // navigateTo(context, Settings());
          //                   },
          //                   child: ListTile(
          //                     title: Text(" Settings ",style: TextStyle(color: Colors.lightGreen,fontSize: 20),),
          //                     leading: Icon(Icons.settings,color: Colors.lightGreen,),
          //
          //                   ),
          //                 ),
          //
          //               ],
          //             ),
          //
          //           ),
          //         ],
          //       ),
          //     ),
          // ),
          //  ),


                ],
              ),
        ),
      )

      );

  }
}