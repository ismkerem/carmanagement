import 'package:carmanagement/locations.dart';
import 'package:carmanagement/mycar.dart';
import 'package:carmanagement/shop.dart';
import 'package:flutter/material.dart';
import 'package:carmanagement/main_page.dart';

class sos extends StatefulWidget {
  const sos({super.key});

  @override
  State<sos> createState() => _sosState();
}

class _sosState extends State<sos> {
  int _selectedIndex = 4;
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
      appBar: AppBar(automaticallyImplyLeading: false,),

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
      body: Padding(
        padding: const EdgeInsets.only(top:10.0),
        child: Column(
          children: [
            Text("Contact Emergency Services",style:TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            ListTile(
              title: Text("SOS"),
              subtitle: Text("Call 911"),
              leading: IconButton(icon:Icon(Icons.call), onPressed: (){}),
            ),
            ListTile(
              title: Text("Road Assistance"),
              subtitle: Text("Call 44 62 98"),
              leading: IconButton(icon:Icon(Icons.car_repair), onPressed: (){}),
            ),
            ListTile(
              title: Text("Whatsapp"),
              subtitle: Text("444 22 22"),
              leading: IconButton(icon:Icon(Icons.mail), onPressed: (){}),
            ),
            ListTile(
              title: Text("Live Chat"),
              subtitle: Text("Chat now"),
              leading: IconButton(icon:Icon(Icons.chat), onPressed: (){}),
            ),
            Text("Other",style:TextStyle(fontSize: 20)),
            ListTile(
              title: Text("Library"),
              leading: IconButton(icon:Icon(Icons.library_books), onPressed: (){}),
            ),
          ],
        ),
      )
    );
  }
}
