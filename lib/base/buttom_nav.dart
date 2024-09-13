import 'package:flutter/material.dart';
import 'package:flutter_lessons/screens/home_screen.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final appScreens = [
    const HomeScreen(),
    const Center(child: Text("Search")),
    const Center(child: Text("Ticket")),
    const Center(child: Text("Profile"))
  ];
  //change index for btnnavbar
  int _selectedIndex=0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Iconsax.home_1_copy),
              label: "Home",
              activeIcon: Icon(Iconsax.home)),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.search_normal_copy),
              label: "Search",
              activeIcon: Icon(Iconsax.search_normal)),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.ticket_copy),
              label: "Tickets",
              activeIcon: Icon(Iconsax.ticket)),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_add_copy),
              label: "Person",
              activeIcon: Icon(Iconsax.profile_add))
        ],
      ),
    );
  }
}
