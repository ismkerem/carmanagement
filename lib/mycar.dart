import 'dart:ffi';

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

class _mycarState extends State<mycar> with TickerProviderStateMixin {
  int _selectedIndex = 1;
  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Toyota Corolla X "),
        automaticallyImplyLeading: false,
        actions: [
          Container(
            width: 74,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              shape: BoxShape.rectangle,
              color: Colors.grey[300],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "  32",
                  style: TextStyle(fontSize: 15),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.sunny),
                  iconSize: 20,
                ),
              ],
            ),
          ),
          IconButton(onPressed: null, icon: Icon(Icons.person))
        ],
      ),
      bottomNavigationBar: navigation_bar(),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            color: Colors.grey,
            child: null,
          ),
          Container(
            color: Colors.grey,
            child: TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.red,
              tabs: [
                Tab(
                  text: 'Status',
                ),
                Tab(
                  text: 'Climate',
                ),
                Tab(
                  text: "Location",
                ),
                Tab(
                  text: "Safety",
                ),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                page_1(),
                Container(child: Center(child: Text('people'))),
                Text('Person'),
                Text("Deneme"),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBar navigation_bar() {
    return BottomNavigationBar(
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
    );
  }

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

  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }
}

class page_1 extends StatelessWidget {
  const page_1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.grey,automaticallyImplyLeading: false,),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 170,height: 150,color: Colors.green,),
              Container(width: 170,height: 150,color: Colors.pinkAccent,),


            ],
          )
        ],
      ),
    );
  }
}
