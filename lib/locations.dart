import 'package:carmanagement/main_page.dart';
import 'package:carmanagement/mycar.dart';
import 'package:carmanagement/shop.dart';
import 'package:carmanagement/sos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
class locations extends StatefulWidget {
  const locations({super.key});

  @override
  State<locations> createState() => _locationsState();
}

class _locationsState extends State<locations> {
  int _selectedIndex = 2;
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
    return Scaffold(

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
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(51.509364, -0.128928),
              zoom: 3.2,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
