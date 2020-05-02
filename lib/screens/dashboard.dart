import 'package:GoogleSolChal/widgets/dashboard/dashboardView.dart';
import 'package:GoogleSolChal/widgets/dashboard/mapView.dart';
import 'package:GoogleSolChal/widgets/dashboard/marketView.dart';
import 'package:GoogleSolChal/widgets/dashboard/profileView.dart';
import 'package:flutter/material.dart';

enum view{
map,
dashboard,
profile,
market
}

class Dashboard extends StatefulWidget{
  view curView = view.dashboard;
  int _selectedNavIndex = 0 ;
  @override
  State<StatefulWidget> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>{

  void _onItemTapped(int index){
    setState((){
      widget._selectedNavIndex = index;
      switch(widget._selectedNavIndex){
        case 0: widget.curView = view.dashboard;break;
        case 1: widget.curView = view.map;break;
        case 2: widget.curView = view.market;break;
        case 3: widget.curView = view.profile;break;
      }
    });
  }

  @override
  Widget build(BuildContext context){
    Widget screen;
    
    switch(widget.curView){
      case view.dashboard:
        screen = DashboardView();break;
      case view.map:
        screen = MapView();break;
      case view.market:
        screen = MarketView();break;
      case view.profile:
        screen = ProfileView();break;
    }
    return Scaffold(
      appBar: null,
      body: screen,
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
        currentIndex: widget._selectedNavIndex,
        selectedItemColor: Colors.amber[800],
        onTap:_onItemTapped
      ),
    );
  }
}