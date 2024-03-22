import 'package:carmanagement/models/weather_model.dart';
import 'package:carmanagement/services/weather_service.dart';
import 'package:flutter/material.dart';
import 'mycar.dart';
import 'locations.dart';
import 'shop.dart';
import 'sos.dart';
import 'package:weather/weather.dart';
import 'package:url_launcher/url_launcher.dart';
class main_page extends StatefulWidget {
  const main_page({super.key});

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  int _selectedIndex = 0;
  final _weatherService = WeatherService("e64ddb42aa0a3682f78ac8fbbed336fa");
  final Uri _url = Uri.parse('mailto:johndoe@example.com?subject=Help');



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:  <BottomNavigationBarItem>[
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
      appBar: AppBar(
        title: Text(page_constant.main_page),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 1.0),
            child: IconButton(
              onPressed: () async{
                Future<void> _launchUrl() async {
                  if (!await launchUrl(_url)) {
                    throw Exception('Could not launch $_url');
                  }

                }
                _launchUrl();
              },
              icon: Icon(Icons.email),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: CircleAvatar(
            child: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                showDialog(context: context, builder: (BuildContext context){
                  return warning_person;
                });
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              margin: EdgeInsets.only(top: 16.0),
              color: Colors.blue,
              child:Column(
                children:[
                  Text("Akaryakıt Fiyatları",style:Theme.of(context).textTheme.headlineSmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Dizel: 42 TL/Litre"),
                      Text("Benzin: 42 TL/Litre"),
                    ],
                  ),
                ],

              ),
            ),
            SizedBox(height: 16.0),


          ],
        ),
      ),
    );
  }

 AlertDialog warning_person=AlertDialog(
   title:Text("Login"),
  content: Text("You need to login to access this feature"),
  actions: [
    TextButton(onPressed: (){}, child: Text("Login")),
    TextButton(onPressed: (){}, child: Text("Cancel")),
  ],
 );
void _itemtap(int index){
  setState(() {
    _selectedIndex = index;
  });
  if (index == 0) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => main_page()));
  } else if (index == 1) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => mycar()));
  } else if (index == 2) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => locations()));
  } else if (index == 3) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => shop()));
  } else if (index == 4) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => sos()));
  }
}

}

class page_constant{
  static  String main_page = "Welcome to Car Care App";
}