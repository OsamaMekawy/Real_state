import 'package:flutter/material.dart';
import 'package:realstate/Modules/Details/car_details.dart';
import 'package:realstate/Modules/Details/productDetails/list_of_products.dart';
import 'package:realstate/Modules/Details/productDetails/state_details.dart';
import 'package:realstate/core/compounts.dart';

class CarListTWO extends StatefulWidget {
  const CarListTWO({Key? key}) : super(key: key);

  @override
  State<CarListTWO> createState() => _CarListTWOState();
}

class _CarListTWOState extends State<CarListTWO> {
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        actions: [
          IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close,color: Colors.black,))
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 180.0),
          child: Text("اختار الماركة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
        ),
      ),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0,left: 10),
                child: TextFormField(
                  controller: controller,
                  cursorColor: Colors.grey,
                  textAlign: TextAlign.start,


                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "ابحث عن الماركة ؟",
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
              SizedBox(height: 10,),
              Container(
                height: 900,
                child: Scrollbar(

                    child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context,index)=>buildCarsModel(),
                        separatorBuilder: (context,index)=>Padding(
                          padding: EdgeInsets.only(right: 10,left: 10,),
                          child: Divider(),
                        ),
                        itemCount: 20
                    )
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  Widget buildCarsModel()=> GestureDetector(
    child: Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        child: Row(
          children: [
            Image(image: AssetImage("images/car3.png"),height: 30,width: 30,),
            SizedBox(width: 8,),
            Text("اوبل ",style: TextStyle(fontSize: 18,color: Colors.black),)
          ],
        ),
      ),
    ),
    onTap: (){
      navigateTo(context, ListOfProducts());

    },
  );
}
