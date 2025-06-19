import 'package:flutter/material.dart';
import 'package:hamro_csit_app/article_screen.dart';
import 'package:hamro_csit_app/home_screen.dart';
import 'package:hamro_csit_app/online_compilers.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    OnlineCompilers(),
    
    Center(child: Text("Hello 3rd Screen")),
    ArticleScreen(),
    Center(child: Text("Hello 5th Screen")),
  ];


  void _stateChange(value){
    setState(() {
      _currentIndex = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 65,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              offset: Offset(2, 2),
              blurRadius: 5)],
            
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  _customBottomNavigation(Icons.home, 0,),
                  _customBottomNavigation(Icons.search, 1),
                  SizedBox(width: 50,),
                  _customBottomNavigation(Icons.car_crash, 3),
                  _customBottomNavigation(Icons.person, 4)
                ],
              ),
            ),
          ),

          Positioned(
            left: 160,
            bottom: 35,

            child: InkWell(
              onTap: () {
                _stateChange(2);
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff008D7F),
                ),
                child: Icon(Icons.add,color: Colors.white,size: 30,),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _customBottomNavigation(IconData icon, int index){

    
    Color _selectedIconColor;

    if(_currentIndex == index){
     
      _selectedIconColor=Color(0xff008D7F);
    }
    else{
     
      _selectedIconColor=Colors.grey;
    }

  return InkWell(
    onTap: (){
     _stateChange(index);
    },
    child: Column(
      children: [
        Icon(icon,color: _selectedIconColor,size: 35,),
        
      ],
    ),
  );
}
}


