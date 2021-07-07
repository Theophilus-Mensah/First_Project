import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/place.dart';

// class Places {
//   String title;
//   String subtitle;
//   String imageUrl;
//   double height;

//   Places(this.title, this.subtitle, this.imageUrl, this.height);
// }

Color mBackgroundColor = Color(0xFFFEFEFE);

Color mPrimaryColor = Color(0xFFf36f7c);

Color mSecondaryColor = Color(0xFFfff2f3);

List<Place> placeList = [
  Place(
      "Cape Coast castle", "Cape Coast", "assets/images/capecastle1.jpg", 240),
  Place("Wechiau Hippo Sanctuary", "Upper East",
      "assets/images/WechiauHippo1.jpg", 200),
  Place("Fuller Falls", "Bono East", "assets/images/fullerfalls1.jpg", 120),
  Place("Umbrella Rock", "Eastern", "assets/images/umbrellarock1.jpg", 200),
  Place("Lake Volta", "Oti", "assets/images/lakevolta3.jpg", 240),
  Place("Manhyia Palace", "Ashanti", "assets/images/manhyia1.jpg", 150),
  Place("Larabanga Mosque", "Savannah", "assets/images/larabangamosque1.jpg",
      160),
  Place("Lake Bosumtwi", "Ashanti", "assets/images/LakeBosumtwi1.jpg", 200),
  Place("Kalakpa Nature Reserve", "Volta", "assets/images/kalakpa1.jpg", 120),
  Place("Tanoboase Sacred Grove and Shrine", "Bono",
      "assets/images/tanoboase2.jpg", 120),
  Place("Tango Hills", "Upper East", "assets/images/TangoHills2.jpg", 240),
  Place("Osu Castle", "Accra", "assets/images/osucastle1.jpg", 150),
  Place('JamesTown Lihthouse', 'Accra', 'assets/images/LightHouse2.jpg', 240),
  Place('Wa Naa\'s Palace', 'Upper West', 'assets/images/WaNaa3.jpg', 200),
  Place('Mole National Park', 'Northen', "assets/images/molenationalpark00.jpg",
      220),
  Place("Kyabobo National Park", "Oti", "assets/images/kyabobopark2.jpg", 180),
  Place("Aburi Botanical Gardens", "Eastern", "assets/images/aburigardens1.jpg",
      130),
  Place("Cape Three Point", "western", "assets/images/cape3point2.jpg", 200),
  Place("Bui National Park", "Bono", "assets/images/buipark1.jpg", 150),
  Place("Sacred Crocodile Pond", "Upper east",
      "assets/images/crocodilepond2.jpg", 220),
  Place(
      "Digya National Park", "Bono east", "assets/images/digyapark3.jpg", 180),
  Place("Elmina Castle", "Central", "assets/images/elminacastle2.jpg", 120),
  Place(
      "Independence Square", "Accra", "assets/images/Independence00.jpg", 200),
  Place("Kakum National Park", "Central", "assets/images/Kakum1.jpg", 150),
  Place("Nzulezo Stilt Village", "Western", "assets/images/nzulezo2.jpg", 200),
  Place("Mt.Afadjato", "Volta", "assets/images/afadjato2.jpg", 180),
];

List<AllHotel> allhotellist = [
  AllHotel('Kempinski royal hotel', 'Accra',
      'assets/images/kempinskihotel1.jpg', 200),
  AllHotel('Golden Tulip Kumasi City', 'Ashanti',
      'assets/images/goldentulipkumasicity.jpg', 200),
  AllHotel('Hillburi', 'Eastern', 'assets/images/hillburi.jpg', 200),
  AllHotel('Holiday Inn', 'Accra', 'assets/images/holidayinn1.jpg', 200),
  AllHotel(
      'Jam Guest House', 'Upper East', 'assets/images/jamguesthouse.jpg', 200),
  AllHotel('Jeyads Lodge', 'Upper West', 'assets/images/jeyadslodge.jpg', 200),
  AllHotel(
      'Labadi Beach hotel', 'Accra', 'assets/images/labadibeachhotel.jpg', 200),
  AllHotel('Movenpick Ambassodor Hotel', 'Accra',
      'assets/images/movenpick2.jpg', 200),
  AllHotel(
      'Ridge Royal Hotel', 'Central', 'assets/images/ridgeroyalhotel.jpg', 200),
  AllHotel('Royale Unity Lodge-ahenfie', 'Bono',
      'assets/images/royaleunitylodge-ahenfie.jpg', 200),
  AllHotel('The Pelican Hotel', 'Uppper West',
      'assets/images/thepelicanhotel1.jpg', 200),
  AllHotel(
      'The Royal Senchi', 'Eastern', 'assets/images/theroyalsenchi2.jpg', 200),
  AllHotel(
      'Wli Water Heights', 'Volta', 'assets/images/wliwaterheights1.jpg', 200),
  AllHotel('Zaina Lodge', 'Northern', 'assets/images/zainalodge.jpg', 200),
  AllHotel(
      'The African Regent', 'Accra', 'assets/images/africanregent.jpg', 200),
  AllHotel('Akayet Hotel', 'Upper East', 'assets/images/akayethote2.jpg', 200),
  AllHotel('Best Western Plus Atlantic', 'Western',
      'assets/images/bestwesternplusatlantic.jpg', 200),
  AllHotel('Charlestina Beach Resort', 'Central',
      'assets/images/charlestinabeachresort.jpg', 200),
  AllHotel('Clinton Lodge', 'Northern', 'assets/images/clintonlodge1.jpg', 200),
  AllHotel('Elmina Bay Resort', 'Central', 'assets/images/elminabayresort1.jpg',
      200),
  AllHotel('Eusbett Hotel', 'Bono', 'assets/images/eusbetthotel.jpg', 200),
  AllHotel(
      'Four Villages Inn', 'Ashanti', 'assets/images/fourvillagesinn.jpg', 200),
  AllHotel('Ganass Hotel', 'Upper East', 'assets/images/ganasshotel.jpg', 200),
  AllHotel('Glamossay Hotel', 'Bono', 'assets/images/glamossayhotel.jpg', 200),
];

List<AllRestaurant> allrestaurantlist = [
  AllRestaurant('coco lounge', 'Accra', 'assets/images/cocolounge.jpg', 200),
  AllRestaurant('urban grill', 'Accra', 'assets/images/urbangrill1.jpg', 200),
  AllRestaurant('la chaumiere', 'Accra', 'assets/images/lachaumiere1.jpg', 200),
  AllRestaurant(
      'kokrobite garden', 'Accra', 'assets/images/kokrobitegarden1.jpg', 200),
  AllRestaurant('the republic bar and grill', 'Accra',
      'assets/images/therepublicbar1.jpg', 200),
  AllRestaurant(
      'oasis beach resort', 'Accra', 'assets/images/oasisbeachresort.jpg', 200),
  AllRestaurant('new life cafe', 'Accra', 'assets/images/newlifecafe.jpg', 200),
  AllRestaurant('summeryard vegetarian cafe', 'Accra',
      'assets/images/summeryard.jpg', 200),
  AllRestaurant(
      'coffee corner', 'Accra', 'assets/images/coffeecorner.jpg', 200),
  AllRestaurant('bombay spice', 'Accra', 'assets/images/bombayspice.jpg', 200),
  AllRestaurant('cafe puerto', 'Accra', 'assets/images/cafepuerto1.jpg', 200),
  AllRestaurant(
      'gilous bar & restaurant', 'Accra', 'assets/images/gilousbar.jpg', 200),
  AllRestaurant('sportzzz bar', 'Accra', 'assets/images/sportzzzbar.jpg', 200),
  AllRestaurant('somewhere', 'Accra', 'assets/images/somewhere.jpg', 200),
  AllRestaurant(
      'in n out chillies', 'Accra', 'assets/images/innoutchillies1.jpg', 200),
  AllRestaurant(
      'maritime club', 'Accra', 'assets/images/maritimeclub.jpg', 200),
  AllRestaurant(
      'linda dor restaurant', 'Accra', 'assets/images/lindador1.jpg', 200),
  AllRestaurant('chris cafe', 'Accra', 'assets/images/cocolounge.jpg', 200),
  AllRestaurant('bar 205', 'Accra', 'assets/images/bar205.jpg', 200),
  AllRestaurant('moti mahal', 'Accra', 'assets/images/motimahal.jpg', 200),
  AllRestaurant('the view bar and grill', 'Accra',
      'assets/images/theviewbarandgrill.jpg', 200),
  AllRestaurant('Ike\'s Cafe and Grill Ghana', 'Accra',
      'assets/images/ikescafeandgrillghana.jpg', 200),
  AllRestaurant(
      'Vic Baboo\'s Cafe', 'Accra', 'assets/images/vicbabooscafe.jpg', 200),
  AllRestaurant('wooden tower', 'Accra', 'assets/images/woodenbakery.jpg', 200),
  AllRestaurant('anansekrom pub and restaurant', 'Accra',
      'assets/images/cocolounge.jpg', 200),
  AllRestaurant('oasis lounge bar and restaurant', 'Accra',
      'assets/images/oasis.jpg', 200),
  AllRestaurant('chuck\'s bar & restaurant,', 'Accra',
      'assets/images/chucksbarrestaurant.jpg', 200),
  AllRestaurant(
      'luxury restaurant', 'Accra', 'assets/images/luxuryrestaurant.jpg', 200),
  AllRestaurant('wooden bakery and coffee shop', 'Accra',
      'assets/images/woodenbakery.jpg', 200),
  AllRestaurant(
      'swap fast food', 'Accra', 'assets/images/swaprestaurant.jpg', 200),
  AllRestaurant('bellies byte', 'Accra', 'assets/images/belliesbyte.jpg', 200),
  AllRestaurant('cozy cuisine', 'Accra', 'assets/images/cozycuisine.jpg', 200),
];
