import 'package:carmanagement/models/user_database.dart';
class Car {
  final int id;
  final String model;
  final int price;
  final String image;
  final User user;
  final int model_year;
  final String fuel_type;
  final String transmission;
  final String engine;

  Car( {required this.user,required this.id, required this.model, required this.price, required this.image, required this.model_year,required this.fuel_type,required this.transmission,
    required this.engine
  });
}