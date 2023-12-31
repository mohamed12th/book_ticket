import 'package:book_ticket/screens/home/view.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex =0;
  static final List<Widget>_widgetOptions = <Widget>[
    HomeScreen(),
    Text("Search"),
    Text("Ticket"),
    Text("Profile"),

  ];
  void _onItemTapped ( int index){
    setState(() {
      _selectedIndex = index ;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar :
      BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
          elevation: 10,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Color(0xFF526480),
          type: BottomNavigationBarType.fixed,
          items: [

        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: ""),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
    activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),label: ""),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
    activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),label: ""),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
    activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),label: ""),


      ]),
    );
  }
}
