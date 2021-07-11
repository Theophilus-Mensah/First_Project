class Place {
  String title;
  String subtitle;
  String imageUrl;
  double height;

  Place(this.title, this.subtitle, this.imageUrl, this.height);
}

class AllHotel {
  String title;
  String subtitle;
  String imageUrl;
  double height;

  AllHotel(this.title, this.subtitle, this.imageUrl, this.height);
}

class AllRestaurant {
  String title;
  String subtitle;
  String imageUrl;
  double height;

  AllRestaurant({this.title, this.subtitle, this.imageUrl, this.height});
}

List<AllRestaurant> allrestaurant = [
  AllRestaurant(
      title: 'coco lounge',
      subtitle: 'Accra',
      imageUrl: 'assets/images/cocolounge.jpg',
      height: 200),
  AllRestaurant(
      title: 'urban grill',
      subtitle: 'Accra',
      imageUrl: 'assets/images/urbangrill1.jpg',
      height: 200),
  AllRestaurant(
      title: 'la chaumiere',
      subtitle: 'Accra',
      imageUrl: 'assets/images/lachaumiere1.jpg',
      height: 200),
  AllRestaurant(
      title: 'kokrobite garden',
      subtitle: 'Accra',
      imageUrl: 'assets/images/kokrobitegarden1.jpg',
      height: 200),
  AllRestaurant(
      title: 'the republic bar and grill',
      subtitle: 'Accra',
      imageUrl: 'assets/images/therepublicbar1.jpg',
      height: 200),
  AllRestaurant(
      title: 'oasis beach resort',
      subtitle: 'Accra',
      imageUrl: 'assets/images/oasisbeachresort.jpg',
      height: 200),
  AllRestaurant(
      title: 'new life cafe',
      subtitle: 'Accra',
      imageUrl: 'assets/images/newlifecafe.jpg',
      height: 200),
  AllRestaurant(
      title: 'summeryard vegetarian cafe',
      subtitle: 'Accra',
      imageUrl: 'assets/images/summeryard.jpg',
      height: 200),
  AllRestaurant(
      title: 'coffee corner',
      subtitle: 'Accra',
      imageUrl: 'assets/images/coffeecorner.jpg',
      height: 200),
  AllRestaurant(
      title: 'bombay spice',
      subtitle: 'Accra',
      imageUrl: 'assets/images/bombayspice.jpg',
      height: 200),
  AllRestaurant(
      title: 'cafe puerto',
      subtitle: 'Accra',
      imageUrl: 'assets/images/cafepuerto1.jpg',
      height: 200),
  AllRestaurant(
      title: 'gilous bar & restaurant',
      subtitle: 'Accra',
      imageUrl: 'assets/images/gilousbar.jpg',
      height: 200),
  AllRestaurant(
      title: 'sportzzz bar',
      subtitle: 'Accra',
      imageUrl: 'assets/images/sportzzzbar.jpg',
      height: 200),
  AllRestaurant(
      title: 'somewhere',
      subtitle: 'Accra',
      imageUrl: 'assets/images/somewhere.jpg',
      height: 200),
  AllRestaurant(
      title: 'in n out chillies',
      subtitle: 'Accra',
      imageUrl: 'assets/images/innoutchillies1.jpg',
      height: 200),
  AllRestaurant(
      title: 'maritime club',
      subtitle: 'Accra',
      imageUrl: 'assets/images/maritimeclub.jpg',
      height: 200),
  AllRestaurant(
      title: 'linda dor restaurant',
      subtitle: 'Accra',
      imageUrl: 'assets/images/lindador1.jpg',
      height: 200),
  AllRestaurant(
      title: 'chris cafe',
      subtitle: 'Accra',
      imageUrl: 'assets/images/cocolounge.jpg',
      height: 200),
  AllRestaurant(
      title: 'bar 205',
      subtitle: 'Accra',
      imageUrl: 'assets/images/bar205.jpg',
      height: 200),
  AllRestaurant(
      title: 'moti mahal',
      subtitle: 'Accra',
      imageUrl: 'assets/images/motimahal.jpg',
      height: 200),
  AllRestaurant(
      title: 'the view bar and grill',
      subtitle: 'Accra',
      imageUrl: 'assets/images/theviewbarandgrill.jpg',
      height: 200),
  AllRestaurant(
      title: 'Ike\'s Cafe and Grill Ghana',
      subtitle: 'Accra',
      imageUrl: 'assets/images/ikescafeandgrillghana.jpg',
      height: 200),
  AllRestaurant(
      title: 'Vic Baboo\'s Cafe',
      subtitle: 'Accra',
      imageUrl: 'assets/images/vicbabooscafe.jpg',
      height: 200),
  AllRestaurant(
      title: 'wooden tower',
      subtitle: 'Accra',
      imageUrl: 'assets/images/woodenbakery.jpg',
      height: 200),
  AllRestaurant(
      title: 'anansekrom pub and restaurant',
      subtitle: 'Accra',
      imageUrl: 'assets/images/cocolounge.jpg',
      height: 200),
  AllRestaurant(
      title: 'oasis lounge bar and restaurant',
      subtitle: 'Accra',
      imageUrl: 'assets/images/oasis.jpg',
      height: 200),
  AllRestaurant(
      title: 'chuck\'s bar & restaurant,',
      subtitle: 'Accra',
      imageUrl: 'assets/images/chucksbarrestaurant.jpg',
      height: 200),
  AllRestaurant(
      title: 'luxury restaurant',
      subtitle: 'Accra',
      imageUrl: 'assets/images/luxuryrestaurant.jpg',
      height: 200),
  AllRestaurant(
      title: 'wooden bakery and coffee shop',
      subtitle: 'Accra',
      imageUrl: 'assets/images/woodenbakery.jpg',
      height: 200),
  AllRestaurant(
      title: 'swap fast food',
      subtitle: 'Accra',
      imageUrl: 'assets/images/swaprestaurant.jpg',
      height: 200),
  AllRestaurant(
      title: 'bellies byte',
      subtitle: 'Accra',
      imageUrl: 'assets/images/belliesbyte.jpg',
      height: 200),
  AllRestaurant(
      title: 'cozy cuisine',
      subtitle: 'Accra',
      imageUrl: 'assets/images/cozycuisine.jpg',
      height: 200),
];
 // List<Place> placeList = [
//   Place(
//      title: "Cape Coast castle",subtitle: "Cape Coast",imageUrl: "assets/images/capecastle1.jpg",height: 240),
//   Place(title:"Wechiau Hippo Sanctuary", subtitle:"Upper East",
//      imageUrl: "assets/images/WechiauHippo1.jpg",height: 200),
//   Place(title:"Fuller Falls",subtitle: "Bono East", imageUrl:"assets/images/fullerfalls1.jpg",height: 120),
//   Place(title:"Umbrella Rock", subtitle:"Eastern", imageUrl:"assets/images/umbrellarock1.jpg",height: 200),
//   Place(title:"Lake Volta",subtitle: "Oti", imageUrl:"assets/images/lakevolta3.jpg",height: 240),
//   Place(title:"Manhyia Palace", subtitle:"Ashanti", imageUrl:"assets/images/manhyia1.jpg",height: 150),
//   Place(title:"Larabanga Mosque",subtitle: "Savannah",imageUrl: "assets/images/larabangamosque1.jpg",
//     height:  160),
//   Place(title:"Lake Bosumtwi",subtitle: "Ashanti",imageUrl: "assets/images/LakeBosumtwi1.jpg",height: 200),
//   Place(title:"Kalakpa Nature Reserve", subtitle:"Volta", imageUrl:"assets/images/kalakpa1.jpg",height: 120),
//   Place(title:"Tanoboase Sacred Grove and Shrine",subtitle: "Bono",
//       imageUrl: "assets/images/tanoboase2.jpg", height:120),
//   Place(title:"Tango Hills",subtitle: "Upper East",imageUrl: "assets/images/TangoHills2.jpg",height: 240),
//   Place(title"Osu Castle", subtitle:"Accra",imageUrl: "assets/images/osucastle1.jpg",height: 150),
//   Place(title:'JamesTown Lihthouse',subtitle: 'Accra', imageUrl:'assets/images/LightHouse2.jpg',height: 240),
//   Place(title:'Wa Naa\'s Palace', subtitle:'Upper West',imageUrl: 'assets/images/WaNaa3.jpg',height:height: 200),
//   Place(title:'Mole National Park',subtitle: 'Northen',imageUrl: "assets/images/molenationalpark00.jpg",
//     height:  220),
//   Place(title:"Kyabobo National Park", subtitle:"Oti", imageUrl:"assets/images/kyabobopark2.jpg",height: 180),
//   Place(title:"Aburi Botanical Gardens", subtitle:"Eastern",imageUrl: "assets/images/aburigardens1.jpg",
//    height:   130),
//   Place(title:"Cape Three Point",subtitle: "western",imageUrl: "assets/images/cape3point2.jpg", height:200),
//   Place(title:"Bui National Park",subtitle: "Bono",imageUrl: "assets/images/buipark1.jpg",height: 150),
//   Place(title:"Sacred Crocodile Pond",subtitle: "Upper east",
//      imageUrl: "assets/images/crocodilepond2.jpg",height: 220),
//   Place(
//       title:"Digya National Park",subtitle: "Bono east", imageUrl:"assets/images/digyapark3.jpg", height:180),
//   Place(title:"Elmina Castle", subtitle:"Central",imageUrl: "assets/images/elminacastle2.jpg",height: 120),
//   Place(
//       title:"Independence Square",subtitle: "Accra", imageUrl:"assets/images/Independence00.jpg",height: 200),
//   Place(title:"Kakum National Park",subtitle: "Central", imageUrl:"assets/images/Kakum1.jpg",height: 150),
//   Place(title:"Nzulezo Stilt Village",subtitle: "Western", imageUrl:"assets/images/nzulezo2.jpg",height: 200),
//   Place(title:"Mt.Afadjato",subtitle: "Volta",imageUrl: "assets/images/afadjato2.jpg",height: 180),
// ];

// List<AllHotel> allhotellist = [
//   AllHotel(title:'Kempinski royal hotel', subtitle:'Accra',
//      imageUrl: 'assets/images/kempinskihotel1.jpg',height: 200),
//   AllHotel(title:'Golden Tulip Kumasi City', subtitle:'Ashanti',
//      imageUrl: 'assets/images/goldentulipkumasicity.jpg',height: 200),
//   AllHotel(title:'Hillburi',subtitle: 'Eastern', imageUrl:'assets/images/hillburi.jpg', height:200),
//   AllHotel(title:'Holiday Inn',subtitle: 'Accra', imageUrl:'assets/images/holidayinn1.jpg',height: 200),
//   AllHotel(
//       title:'Jam Guest House',subtitle: 'Upper East', imageUrl:'assets/images/jamguesthouse.jpg',height: 200),
//   AllHotel(title:'Jeyads Lodge', subtitle:'Upper West',imageUrl: 'assets/images/jeyadslodge.jpg',height: 200),
//   AllHotel(
//       title:'Labadi Beach hotel', subtitle:'Accra', imageUrl:'assets/images/labadibeachhotel.jpg',height: 200),
//   AllHotel(title:'Movenpick Ambassodor Hotel',subtitle: 'Accra',
//      imageUrl: 'assets/images/movenpick2.jpg', height:200),
//   AllHotel(
//       title:'Ridge Royal Hotel', subtitle:'Central', imageUrl:'assets/images/ridgeroyalhotel.jpg',height: 200),
//   AllHotel(title:'Royale Unity Lodge-ahenfie',subtitle: 'Bono',
//       imageUrl:'assets/images/royaleunitylodge-ahenfie.jpg'height:, 200),
//   AllHotel(title:'The Pelican Hotel', subtitle:'Uppper West',
//      imageUrl: 'assets/images/thepelicanhotel1.jpg',height: 200),
//   AllHotel(
//       title:'The Royal Senchi', subtitle:'Eastern', imageUrl:'assets/images/theroyalsenchi2.jpg',height: 200),
//   AllHotel(
//       title:'Wli Water Heights',subtitle: 'Volta',imageUrl: 'assets/images/wliwaterheights1.jpg',height: 200),
//   AllHotel(title:'Zaina Lodge',subtitle: 'Northern',imageUrl: 'assets/images/zainalodge.jpg',height: 200),
//   AllHotel(
//      title: 'The African Regent', subtitle:'Accra', imageUrl:'assets/images/africanregent.jpg', height:200),
//   AllHotel(title:'Akayet Hotel', subtitle:'Upper East', imageUrl:'assets/images/akayethote2.jpg',height: 200),
//   AllHotel(title:'Best Western Plus Atlantic', subtitle:'Western',
//      imageUrl: 'assets/images/bestwesternplusatlantic.jpg', height:200),
//   AllHotel(title:'Charlestina Beach Resort',subtitle: 'Central',
//      imageUrl: 'assets/images/charlestinabeachresort.jpg',height: 200),
//   AllHotel(title:'Clinton Lodge', subtitle:'Northern', imageUrl:'assets/images/clintonlodge1.jpg',height: 200),
//   AllHotel(title:'Elmina Bay Resort',subtitle: 'Central', imageUrl:'assets/images/elminabayresort1.jpg',
//     height:  200),
//   AllHotel(title:'Eusbett Hotel', subtitle:'Bono', imageUrl:'assets/images/eusbetthotel.jpg', height:200),
//   AllHotel(
//       title:'Four Villages Inn',subtitle: 'Ashanti',imageUrl: 'assets/images/fourvillagesinn.jpg',height: 200),
//   AllHotel(title:'Ganass Hotel', subtitle:'Upper East', imageUrl:'assets/images/ganasshotel.jpg', height:200),
//   AllHotel(title:'Glamossay Hotel',subtitle: 'Bono',imageUrl: 'assets/images/glamossayhotel.jpg', height:200),
// ];