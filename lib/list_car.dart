class Car {
  final int id;
  final String model;
  final int price;
  final String image;
  final int model_year;
   final String fuel_type;
    final String transmission;
    final String engine;

  Car( {required this.id, required this.model, required this.price, required this.image, required this.model_year,required this.fuel_type,required this.transmission,
   required this.engine
  });
}
class list_car{
static List<Car> cars=[
  Car(
    id: 1,
    model: 'Toyota Corolla',
    price: 200000,
    image: 'https://arabalarcomtr.b-cdn.net/wp-content/uploads/images/versiyon/660x495/toyota/corolla/sedan/2008/2008-toyota-corolla-sedan-04.jpg', model_year: 2008,
    fuel_type: "Petrol",
    transmission: "Semi-Automatic",
    engine: "1.6",
  ),
  Car(
    id: 2,
    model: 'Toyota Corolla',
    price: 200000,
    image: 'https://arabam-blog.mncdn.com/wp-content/uploads/2021/04/carpixel.net-2010-toyota-corolla-eu-3479-wide-1068x668.jpg', model_year: 2010,
    fuel_type: "Diesel",
    transmission: "Manual",
    engine: "1.4D4D",
  ),
  Car(
    id: 3,
    model: 'Toyota Corolla',
    price: 200000,
    image: 'https://i0.shbdn.com/photos/13/96/72/x5_1124139672j0c.jpg', model_year: 2012,
    fuel_type: "Diesel",
    transmission: "Semi-Automatic(MMT)",
    engine: "1.4D4D",
  ),
  Car(
    id: 4,
    model: 'Toyota Corolla',
    price: 280000,
    image: 'https://resim.epey.com/3383/m_toyota-corolla-1-33-99-ps-life-2.jpg', model_year: 2015,
    fuel_type: "Diesel",
    transmission: "Semi-Automatic(MMT)",
    engine: "1.4D4D",
  ),
  Car(
    id: 5,
    model: 'Honda Civic',
    price: 143000,
    image: 'https://resim.epey.com/149656/m_2019-honda-civic-sedan-1-6-125-ps-otomatik-elegance-1.png', model_year: 2019,
    fuel_type: "Petrol",
    transmission: "Semi-Automatic(CVT)",
    engine: "1.6",
  ),
  Car(
    id: 6,
    model: 'Renault Megane',
    price: 600000,
    image: 'https://resim.epey.com/391557/m_2019-renault-megane-sedan-1-3-tce-140-bg-edc-touch-1.jpg', model_year: 2015,
    fuel_type: "Petrol",
    transmission: "Semi-Automatic(EDC)",
    engine: "1.3TCE",

  ),


];

}