import 'package:carmanagement/locations.dart';
import 'package:carmanagement/main_page.dart';
import 'package:carmanagement/shop.dart';
import 'package:carmanagement/sos.dart';
import 'package:flutter/material.dart';
class mycar extends StatefulWidget {
  const mycar({super.key});

  @override
  State<mycar> createState() => _mycarState();
}

class _mycarState extends State<mycar> {
  int _selectedIndex = 1;
  void _itemtap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => main_page()));
    } else if (index == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => mycar()));
    } else if (index == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => locations()));
    } else if (index == 3) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => shop()));
    } else if (index == 4) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sos()));
    }
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
       appBar: AppBar(
         automaticallyImplyLeading: false,
       ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'My Car',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_location),
            label: 'Locations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'SOS',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _itemtap,
      ),
    );
  }
}
