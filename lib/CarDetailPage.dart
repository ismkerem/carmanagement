import 'package:carmanagement/list_car.dart';
import 'package:flutter/material.dart';
class CarDetailPage extends StatelessWidget {
  final Car car;

  CarDetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(car.model),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(car.image),
            Text(car.model),
            Text('Fiyat: ${car.price} TL'),

          ],
        ),
      ),
    );
  }
}
