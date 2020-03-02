import 'package:flutter/material.dart';

class GoogleMap extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _GoogleMapState();
}

class _GoogleMapState extends State<GoogleMap>{
  int _selectedNavIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedNavIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
    
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(
              Icons.home,
              color:Colors.grey
            ),
            title:Text("")
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.search,color:Colors.grey),
            title:Text("")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.turned_in_not,color:Colors.grey),
            title:Text("")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,color:Colors.grey),
            title:Text("")
          ),
        ],
        currentIndex: _selectedNavIndex,
        selectedItemColor: Colors.amber[800],
        onTap:_onItemTapped
      ),
    );
  }
}