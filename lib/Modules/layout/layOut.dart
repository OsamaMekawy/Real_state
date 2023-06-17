import 'package:flutter/material.dart';
import 'package:realstate/Modules/Account/account.dart';
import 'package:realstate/Modules/Advertisement/advertisement.dart';
import 'package:realstate/Modules/Home/home.dart';
import 'package:realstate/Modules/Message/message.dart';
import 'package:realstate/Modules/Sale/sale.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {

  int currentIndex = 0;

  List<Widget> screens = [
    Home(),
    MessageScreen(),
    SaleScreen(),
    ADsScreen(),
    AccountScreen(),
    // DoneTasksScren(),
    // ArchiveTasksSreen()
  ];
  List<Widget> Iconss = [
    Icon(Icons.home_outlined),
    Icon(Icons.chat_outlined),
    Icon(Icons.add_circle_outline),
    Icon(Icons.favorite_border_outlined),
    Icon(Icons.person_outline_outlined),

  ];
  @override
  Widget build(BuildContext context) {



    // List<String> titles = [
    //   "NewTasks",
    //   "DoneTasks",
    //   "ArchiveTasks",
    // ];

    return Scaffold (
      body: screens[currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[30],
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 15,
        unselectedItemColor: Colors.grey.shade400,
        selectedItemColor: Colors.black,
        selectedFontSize: 15,
        iconSize: 25,
        currentIndex: currentIndex,
        onTap: (index){
       setState(() {
         currentIndex=index;
       });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ' الرئيسيه'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_outlined),label: 'المحادثات',),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline,color: Colors.red,),label: ' بيع'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: ' اعلاناتى'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined),label: ' الحساب'),
        ],
      ),

    );
  }
}
