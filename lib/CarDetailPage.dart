import 'package:carmanagement/list_car.dart';
import 'package:carmanagement/models/car_model.dart';
import 'package:carmanagement/models/user_database.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CarDetailPage extends StatelessWidget {
  final Car car;

  CarDetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(car.model)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(car.image),
            SizedBox(height: 10),
            Text(
              car.model,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
              ),
                child: Column(
                  children: [
                    Text("İsim Soyad: ${car.user.user_Name}"),
                    Text('Fiyat: ${car.price} TL'),
                    Text('Model Yılı: ${car.model_year} '),
                    Text('Yakıt tipi: ${car.fuel_type} '),
                    Text('Şanzıman türü: ${car.transmission} '),
                    Text('Motor hacmi: ${car.engine} '),

                  ],
                )

            ),
            SizedBox(height: 90),
            Row(children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    launchUrlString("tel://${car.user.phone_number}}");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call),
SizedBox(width: 10),
                      Text('Ara'),
                    ],
                  ),
                ),
              ),
            ]
            )
          ],
        ),
      ),
    );

  }


  }

