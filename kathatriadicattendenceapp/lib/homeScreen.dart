import 'package:flutter/material.dart';
import 'package:kathatriadicattendenceapp/Calender.dart';
import 'package:kathatriadicattendenceapp/Checkinout.dart';
import 'package:kathatriadicattendenceapp/ProfilePage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required String title}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 1;

  List pages = [
    CalenderPage(),
    Checkinout(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xfff6ac37),
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(size: 40, Icons.calendar_today),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(size: 40,Icons.check,),
          ),
          BottomNavigationBarItem(
            label: (""),
            icon: Icon(size: 40,Icons.person,),
          ),
        ],
      ),
    );
  }
}
