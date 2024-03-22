import 'package:carmanagement/locations.dart';
import 'package:carmanagement/main_page.dart';
import 'package:carmanagement/mycar.dart';
import 'package:carmanagement/sos.dart';
import 'package:flutter/material.dart';
import 'package:carmanagement/list_car.dart';
import 'package:carmanagement/CarDetailPage.dart';
class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  int _selectedIndex = 3;
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
appBar: AppBar(title: Center(child: Text("Store")),automaticallyImplyLeading: false,),
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
        padding: const EdgeInsets.all(30.0),
        child:  ListView.builder(
          itemCount: list_car.cars.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarDetailPage(car: list_car.cars[index]),
                  ),
                );
              },
              child: Container(
               height: 200,

          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),

            ),
          ),
                child: ListTile(
                  leading: Image.network(list_car.cars[index].image),
                  title: Text(list_car.cars[index].model),
                  subtitle: Text('Fiyat: ${list_car.cars[index].price} TL'),
                ),

              ),
            );
          },
        ),
      ),
    );
  }
}


