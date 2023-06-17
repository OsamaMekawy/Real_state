import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
import 'package:realstate/Modules/Details/productDetails/all_state_view.dart';
import 'package:realstate/Modules/Details/real_state_details.dart';
import 'package:realstate/Modules/Details/sevices_details.dart';
import 'package:realstate/core/compounts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var controller = TextEditingController();
  bool nav = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_outlined,color: Colors.black,size: 35,)) ,
        actions: [
          Padding(

            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down,color: Colors.red,)),
                Text('مصر',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),

              ],
            ),
          )
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: controller,
                  cursorColor: Colors.grey,

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "بتدور على ايه ؟",
                    hintStyle: TextStyle(color: Colors.black,fontSize: 18),
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
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  children: [
                    Text("استكشف الفئات",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Spacer(),
                    TextButton(onPressed: (){navigateTo(context, AllStateView());}, child: Text("مشاهدة الكل",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)))
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                height: 80,

               // height: MediaQuery.of(context).size.height/2-260,
               // width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,


                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(255, 0, 0, .10),
                              ),
                              child: Image(image: AssetImage("images/car.png"),height: 20,width: 20,color: Colors.red,),
                            ),
                            onTap: (){navigateTo(context, CarDetails());},
                          ),
                          Text("عربيات ",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(255, 0, 0, .10),
                              ),
                              child: Image(image: AssetImage("images/property.png"),height: 20,width: 20,color: Colors.red,),
                            ),
                            onTap: (){navigateTo(context, RealStateDetails());},
                          ),
                          Text("عقارات ",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(255, 0, 0, .10),
                              ),
                              child: Image(image: AssetImage("images/mobile-phone.png"),height: 20,width: 20,color: Colors.red,),
                            ),
                            onTap: (){navigateTo(context, PhoneDetails());},
                          ),
                          Text("موبايلات ",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(255, 0, 0, .10),
                              ),
                              child: Image(image: AssetImage("images/businessman.png"),height: 20,width: 20,color: Colors.red,),
                            ),
                            onTap: (){navigateTo(context, JobsDetails());},
                          ),
                          Text("وظائف ",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(255, 0, 0, .10),
                              ),
                              child: Image(image: AssetImage("images/responsive-design.png"),height: 20,width: 20,color: Colors.red,),
                            ),
                            onTap: (){navigateTo(context, EectronicDetails());},
                          ),
                          Text("اجهزه الكترونيه ",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(255, 0, 0, .10),
                              ),
                              child: Image(image: AssetImage("images/house-decoration.png"),height: 20,width: 20,color: Colors.red,),
                            ),
                            onTap: (){navigateTo(context,DecoreDetails ());},
                          ),
                          Text("اثاث و ديكور ",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(255, 0, 0, .10),
                              ),
                              child: Image(image: AssetImage("images/dress.png"),height: 20,width: 20,color: Colors.red,),
                            ),
                            onTap: (){navigateTo(context, DrssDtails());},
                          ),
                          Text("الموضه و الجمال ",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(255, 0, 0, .10),
                              ),
                              child: Image(image: AssetImage("images/dog.png"),height: 20,width: 20,color: Colors.red,),
                            ),
                            onTap: (){navigateTo(context, AnimalDitails());},
                          ),
                          Text("حيوانات اليفه ",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(255, 0, 0, .10),
                              ),
                              child: Image(image: AssetImage("images/hair-brush.png"),height: 20,width: 20,color: Colors.red,),
                            ),
                            onTap: (){navigateTo(context, KidsDetails());},
                          ),
                          Text("مستلزمات اطفال ",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(255, 0, 0, .10),
                              ),
                              child: Image(image: AssetImage("images/bike.png"),height: 20,width: 20,color: Colors.red,),
                            ),
                            onTap: (){navigateTo(context, HobbyDetails());},
                          ),
                          Text("هوايات ",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(255, 0, 0, .10),
                              ),
                              child: Image(image: AssetImage("images/factory.png"),height: 20,width: 20,color: Colors.red,),
                            ),
                            onTap: (){navigateTo(context, FactoryDetails());},
                          ),
                          Text("تجاره و صناعه ",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(255, 0, 0, .10),
                              ),
                              child: Image(image: AssetImage("images/people.png"),height: 20,width: 20,color: Colors.red,),
                            ),
                            onTap: (){navigateTo(context, ServicesDetails());},
                          ),
                          Text(" خدمات ",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  //  color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: CarouselSlider(
                  items:[
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/businss.png"),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),

                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/statee.png"),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),

                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/businss.png"),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),

                      ],
                    ),

                  ],
                  options: CarouselOptions(
                      height: 250,
                      aspectRatio: 16/9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(seconds: 1),
                      scrollDirection: Axis.horizontal,
                      autoPlayCurve: Curves.fastOutSlowIn
                  ),

                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  children: [
                    Text("فلل للبيع",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Spacer(),
                    TextButton(onPressed: (){}, child: Text("مشاهدة الكل",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)))
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                child: Container(
                  height:290 ,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black12)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 280,

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
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Text("1,000,000 ج.م",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.w900),),
                                    Spacer(),
                                    IconButton(onPressed: (){
                                      setState(() {
                                        nav =! nav;
                                      });
                                    }, icon: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: nav ? Colors.red : Colors.black,
                                        child: Icon(
                                          Icons.favorite_border,
                                          size: 16,
                                          color: Colors.white,
                                        )
                                    )
                                    )
                                   // Icon(Icons.favorite_border,color: nav ? Colors.red : Colors.black,))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("للبيع باميز قطعه ف Town villa ...",style: TextStyle(fontSize: 18,color: Colors.black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.bed_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.bathtub_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.space_dashboard_outlined),
                                    SizedBox(width: 15,),
                                    Text("210 m",style: TextStyle(color: Colors.black),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("ماونتن فيو تشيل اوت بارك ,6 اكتوبر",style: TextStyle(fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("منذ 3 ايام",style: TextStyle(fontSize: 15),),
                              )
                            ],
                          ),
                        ),
                        onTap: (){},
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        child: Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black12)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 280,

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
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Text("1,000,000 ج.م",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.w900),),
                                    Spacer(),
                                    IconButton(onPressed: (){
                                      setState(() {
                                        nav =! nav;
                                      });
                                    },
                                        icon: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: nav ? Colors.red : Colors.black,
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 16,
                                              color: Colors.white,
                                            )
                                        )
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("للبيع باميز قطعه ف Town villa ...",style: TextStyle(fontSize: 18,color: Colors.black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.bed_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.bathtub_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.space_dashboard_outlined),
                                    SizedBox(width: 15,),
                                    Text("210 m",style: TextStyle(color: Colors.black),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("ماونتن فيو تشيل اوت بارك ,6 اكتوبر",style: TextStyle(fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("منذ 3 ايام",style: TextStyle(fontSize: 15),),
                              )
                            ],
                          ),
                        ),
                        onTap: (){},
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        child: Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black12)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 280,

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
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Text("1,000,000 ج.م",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.w900),),
                                    Spacer(),
                                    IconButton(onPressed: (){
                                      setState(() {
                                        nav =! nav;
                                      });
                                    },
                                        icon: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: nav ? Colors.red : Colors.black,
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 16,
                                              color: Colors.white,
                                            )
                                        )
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("للبيع باميز قطعه ف Town villa ...",style: TextStyle(fontSize: 18,color: Colors.black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.bed_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.bathtub_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.space_dashboard_outlined),
                                    SizedBox(width: 15,),
                                    Text("210 m",style: TextStyle(color: Colors.black),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("ماونتن فيو تشيل اوت بارك ,6 اكتوبر",style: TextStyle(fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("منذ 3 ايام",style: TextStyle(fontSize: 15),),
                              )
                            ],
                          ),
                        ),
                        onTap: (){},
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        child: Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black12)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 280,

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
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Text("1,000,000 ج.م",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.w900),),
                                    Spacer(),
                                    IconButton(onPressed: (){
                                      setState(() {
                                        nav =! nav;
                                      });
                                    },
                                        icon: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: nav ? Colors.red : Colors.black,
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 16,
                                              color: Colors.white,
                                            )
                                        )
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("للبيع باميز قطعه ف Town villa ...",style: TextStyle(fontSize: 18,color: Colors.black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.bed_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.bathtub_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.space_dashboard_outlined),
                                    SizedBox(width: 15,),
                                    Text("210 m",style: TextStyle(color: Colors.black),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("ماونتن فيو تشيل اوت بارك ,6 اكتوبر",style: TextStyle(fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("منذ 3 ايام",style: TextStyle(fontSize: 15),),
                              )
                            ],
                          ),
                        ),
                        onTap: (){},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  children: [
                    Text("فلل للايجار",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Spacer(),
                    TextButton(onPressed: (){}, child: Text("مشاهدة الكل",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)))
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                child: Container(
                  height:290 ,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black12)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 280,

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
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Text("1,000,000 ج.م",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.w900),),
                                    Spacer(),
                                    IconButton(onPressed: (){
                                      setState(() {
                                        nav =! nav;
                                      });
                                    },
                                        icon: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: nav ? Colors.red : Colors.black,
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 16,
                                              color: Colors.white,
                                            )
                                        )
                                    )

                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("للبيع باميز قطعه ف Town villa ...",style: TextStyle(fontSize: 18,color: Colors.black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.bed_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.bathtub_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.space_dashboard_outlined),
                                    SizedBox(width: 15,),
                                    Text("210 m",style: TextStyle(color: Colors.black),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("ماونتن فيو تشيل اوت بارك ,6 اكتوبر",style: TextStyle(fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("منذ 3 ايام",style: TextStyle(fontSize: 15),),
                              )
                            ],
                          ),
                        ),
                        onTap: (){},
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        child: Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black12)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 280,

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
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Text("1,000,000 ج.م",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.w900),),
                                    Spacer(),
                                    IconButton(onPressed: (){
                                      setState(() {
                                        nav =! nav;
                                      });
                                    },
                                        icon: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: nav ? Colors.red : Colors.black,
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 16,
                                              color: Colors.white,
                                            )
                                        )
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("للبيع باميز قطعه ف Town villa ...",style: TextStyle(fontSize: 18,color: Colors.black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.bed_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.bathtub_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.space_dashboard_outlined),
                                    SizedBox(width: 15,),
                                    Text("210 m",style: TextStyle(color: Colors.black),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("ماونتن فيو تشيل اوت بارك ,6 اكتوبر",style: TextStyle(fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("منذ 3 ايام",style: TextStyle(fontSize: 15),),
                              )
                            ],
                          ),
                        ),
                        onTap: (){},
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        child: Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black12)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 280,

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
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Text("1,000,000 ج.م",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.w900),),
                                    Spacer(),
                                    IconButton(onPressed: (){
                                      setState(() {
                                        nav =! nav;
                                      });
                                    },
                                        icon: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: nav ? Colors.red : Colors.black,
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 16,
                                              color: Colors.white,
                                            )
                                        )
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("للبيع باميز قطعه ف Town villa ...",style: TextStyle(fontSize: 18,color: Colors.black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.bed_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.bathtub_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.space_dashboard_outlined),
                                    SizedBox(width: 15,),
                                    Text("210 m",style: TextStyle(color: Colors.black),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("ماونتن فيو تشيل اوت بارك ,6 اكتوبر",style: TextStyle(fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("منذ 3 ايام",style: TextStyle(fontSize: 15),),
                              )
                            ],
                          ),
                        ),
                        onTap: (){},
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        child: Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black12)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 280,

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
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Text("1,000,000 ج.م",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.w900),),
                                    Spacer(),
                                    IconButton(onPressed: (){
                                      setState(() {
                                        nav =! nav;
                                      });
                                    },
                                        icon: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: nav ? Colors.red : Colors.black,
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 16,
                                              color: Colors.white,
                                            )
                                        )
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("للبيع باميز قطعه ف Town villa ...",style: TextStyle(fontSize: 18,color: Colors.black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.bed_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.bathtub_outlined),
                                    SizedBox(width: 15,),
                                    Text("3",style: TextStyle(color: Colors.black),),
                                    SizedBox(width: 15,),
                                    Icon(Icons.space_dashboard_outlined),
                                    SizedBox(width: 15,),
                                    Text("210 m",style: TextStyle(color: Colors.black),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("ماونتن فيو تشيل اوت بارك ,6 اكتوبر",style: TextStyle(fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("منذ 3 ايام",style: TextStyle(fontSize: 15),),
                              )
                            ],
                          ),
                        ),
                        onTap: (){},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  children: [
                    Text(" لاب توب",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Spacer(),
                    TextButton(onPressed: (){}, child: Text("مشاهدة الكل",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)))
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                child: Container(
                  height:290 ,

                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>buildLaptops(),
                      separatorBuilder:(context,index) => SizedBox(width: 10,),
                      itemCount: 4
                  )
                ),
              ),


              SizedBox(height: 15,)





            ],
          ),
        ),
      ),

    );
  }


  Widget buildLaptops()=>GestureDetector(
    child: Container(
      height: 280,
      width: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            width: 280,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                image: DecorationImage(
                    image: AssetImage("images/laptop.png"),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                Text("1,000 ج.م",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.w900),),
                Spacer(),
                IconButton(
                    onPressed: (){
                  setState(() {
                    nav =! nav;
                  });
                },
                    icon: CircleAvatar(
                        radius: 15,
                        backgroundColor: nav ? Colors.red : Colors.black,
                        child: Icon(
                          Icons.favorite_border,
                          size: 16,
                          color: Colors.white,
                        )
                    )
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text("HP nividia 8880",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),

          SizedBox(height: 7,),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text("المعادى , القاهره",style: TextStyle(fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text("منذ 3 ايام",style: TextStyle(fontSize: 15),),
          )
        ],
      ),
    ),
    onTap: (){},
  );
}
