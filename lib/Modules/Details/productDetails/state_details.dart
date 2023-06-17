import 'package:flutter/material.dart';

class StateDetails extends StatefulWidget {
  const StateDetails({Key? key}) : super(key: key);

  @override
  State<StateDetails> createState() => _StateDetailsState();
}

class _StateDetailsState extends State<StateDetails> {

  bool nav = true;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                  GestureDetector(
                    child: Container(
                      height: 250,
                      width: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/car3.png")
                        )
                      ),
                    ),
                    onTap: (){},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Container(
                      height: 60,

                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.share_outlined,color: Colors.white,)),

                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.white,)),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.only(right: 5),
                            child: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_forward_sharp,color: Colors.white,),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200.0,left: 8),
                    child: Row(

                      children: [
                        Container(
                          height: 35,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Row(
                              children: [
                                Text("0/20",style: TextStyle(fontSize: 12,color: Colors.black),),
                                SizedBox(width: 5,),
                                Icon(Icons.camera_alt,color: Colors.black,)
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 28,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.orange.shade400,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child:Center(child: Text("مميز",style: TextStyle(fontSize: 15,color: Colors.black),)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5,),
            Directionality(textDirection: TextDirection.rtl,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text("1,000,000 ج.م",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text("اوبل جراند لاند اعلى فئه فابريكه",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.location_on_outlined,),
                              SizedBox(width: 5,),
                              Text("وسط القاهره , القاهره",style: TextStyle(fontSize: 15),)
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("04/6/2023",style: TextStyle(fontSize: 17,color: Colors.black),),
                        )
                      ],
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0,left: 12),
                      child: Divider(
                        color: Colors.black,

                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 655,
                      width: 500,
                      color: Colors.grey[50],
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("التفاصيل",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("الماركة :",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 100,),
                                Text("اوبل",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("موديل :",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 80,),
                                Text("جراند لاند",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("نوع الاعلان :",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 40,),
                                Text("معروض للبيع",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("نوع الوقود :",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 70,),
                                Text("البنزين ",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("نوع السعر :",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 80,),
                                Text("السعر ",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("نوع الدفع :",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 80,),
                                Text("كاش ",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("السنة :",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 100,),
                                Text("2020 ",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("كيلومترات :",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 40,),
                                Text("90000 الى 99999 ",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("ناقل الحركه :",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 40,),
                                Text("اوتوماتيك ",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("الحاله :",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 80,),
                                Text("مستعمل ",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text(" اللون:",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 90,),
                                Text("رمادى ",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("نوع الهيكل :",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 60,),
                                Text("SUV ",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text(" المحرك (سى سى):",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 40,),
                                Text("1600 ",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("فيديو :",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 40,),
                                Text("غير متوفر ",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("جولة افتراضيه :",style: TextStyle(fontSize: 18,color: Colors.black),),
                                SizedBox(width: 40,),
                                Text("غير متوفر ",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(height: 8,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 13,),
                    Container(
                      height: 290,
                      width: 500,
                      child: Column(


                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 340.0),
                            child: Text("وصف",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ),
                          Column(
                          //  crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 300.0),
                                child: Text("Opel Mokka",style: TextStyle(fontSize: 18,color: Colors.black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 300.0),
                                child: Text("Brand New",style: TextStyle(fontSize: 18,color: Colors.black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 300.0),
                                child: Text("Model: 2023",style: TextStyle(fontSize: 18,color: Colors.black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 290.0),
                                child: Text("Black edition car dealership 2023",style: TextStyle(fontSize: 18,color: Colors.black),),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0,right: 10),
                            child: Text("العنوان : 2 شارع لطيف منصور الماظة خلف مستشفى فلسطين",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0,left: 12),
                      child: Divider(
                        color: Colors.black,

                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Container(
                          height:290 ,

                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index)=>buildObel(),
                              separatorBuilder:(context,index) => SizedBox(width: 10,),
                              itemCount: 4
                          )
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Container(
                        color: Colors.white,
                        child: Row(

                          children: [
                            GestureDetector(
                              child: Container(
                                height: 50,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.red)

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Row(
                                    children: [

                                      Icon(Icons.mail_outline,size: 25,color: Colors.red,),
                                      SizedBox(width: 7,),
                                      Text("رسالة",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),

                                    ],
                                  ),
                                ),
                              ),
                              onTap: (){},
                            ),
                            SizedBox(width: 12,),
                            GestureDetector(
                              child: Container(
                                height: 50,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.red)

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Row(
                                    children: [

                                      Icon(Icons.chat_outlined,size: 25,color: Colors.red,),
                                      SizedBox(width: 7,),
                                      Text("المحادثه",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),

                                    ],
                                  ),
                                ),
                              ),
                              onTap: (){},
                            ),
                            SizedBox(width: 12,),
                            GestureDetector(
                              child: Container(
                                height: 50,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Row(
                                    children: [

                                      Icon(Icons.phone_outlined,size: 30,color: Colors.white,),
                                      SizedBox(width: 7,),
                                      Text("مكالمة",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

                                    ],
                                  ),
                                ),
                              ),
                              onTap: (){},
                            ),


                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,)



                  ],
                )
            )
          ],
        ),
      ),


    );
  }

  Widget buildObel()=>GestureDetector(
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
  );
}
