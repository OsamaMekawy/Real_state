import 'package:flutter/material.dart';

class EectronicDetails extends StatefulWidget {
  const EectronicDetails({Key? key}) : super(key: key);

  @override
  State<EectronicDetails> createState() => _EectronicDetailsState();
}

class _EectronicDetailsState extends State<EectronicDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          title:  Text("اجهزة الكترونيه",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),) ,
          leading: IconButton(icon: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 25,), onPressed: () { Navigator.pop(context); },)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 250.0),
          child: GestureDetector(
            onTap: (){},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 10,),
                TextButton(onPressed: (){}, child: Text("تلفزيونات وصويات",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){}, child: Text("كمبيوتر واكسسوارات",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){}, child: Text(" اجهزه والعاب فيديو",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){}, child: Text("كاميرات وتصوير",style: TextStyle(fontSize: 18,color: Colors.black),) ,),
                SizedBox(height: 15,),
                TextButton(onPressed: (){}, child: Text("اجهزه  منزليه",style: TextStyle(fontSize: 18,color: Colors.black),) ,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
