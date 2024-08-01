import 'package:flutter/material.dart';
import 'package:taskmanagement/Screens/profilepage.dart';
import 'package:taskmanagement/widgets/constants.dart';
import 'package:taskmanagement/widgets/premium.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _pages = [
    HomePage(),
    ProfilePage(),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 5,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: kwhite,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded, size: 30),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded, size: 30),
                label: 'Person',
              ),
            ],
            onTap: (index) {
              setState(() {
                activeIndex = index;
              });
            },
          ),

        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
        backgroundColor: kdark,
        child: Icon(Icons.add, color: klightgrey, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[activeIndex],
    );
  }
}

AppBar _buildAppBar()
{
  return AppBar(
    backgroundColor: kwhite,
    elevation: 0, // as always,
    title: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10, top: 5),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: klightgrey,
            borderRadius: BorderRadius.circular(10)
          ),
          // a child for our photo
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/profile.jpg')
          )
        ),
        SizedBox(width: 20,),
        Text('Hello, Immanuel', style: TextStyle(color: Colors.grey.shade600, fontSize: 22, fontWeight: FontWeight.bold),),
      ]
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.more_vert,
          color: Colors.grey.shade600,
          size: 35,
        ),
        onPressed: () {},
      ),
    ]
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: const EdgeInsets.only(right: 0.0, left: 0.0, top: 15.0),
          child: GoPremium(),
        ),

      ]
    );
  }
}