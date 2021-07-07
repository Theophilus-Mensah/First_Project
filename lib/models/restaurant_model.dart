class Restaurant {
  String imageUrl;
  String name;
  String city;
  String description;

  Restaurant({
    this.imageUrl,
    this.name,
    this.city,
    this.description,
  });
}

List<Restaurant> restaurants = [
  Restaurant(
    imageUrl: 'assets/images/lindador.jpg',
    name: 'Linda Dor Restaurant',
    city: 'Eastern',
    description: 'get the best of dishes',
  ),
  Restaurant(
    imageUrl: 'assets/images/urbangrill1.jpg',
    name: 'Urban Grill',
    city: 'Accra',
    description: 'get the best of dishes',
  ),
  Restaurant(
    imageUrl: 'assets/images/lachaumiere1.jpg',
    name: 'La Chaumiere',
    city: 'Accra',
    description: 'get the best of dishes',
  ),
  Restaurant(
    imageUrl: 'assets/images/chucksbarrestaurant.jpg',
    name: 'chuck\'s bar & restaurant',
    city: 'Northern',
    description: 'get the best of dishes',
  ),
  Restaurant(
    imageUrl: 'assets/images/cocolounge.jpg',
    name: 'Coco Lounge',
    city: 'Accra',
    description: 'get the best of dishes',
  ),
];
