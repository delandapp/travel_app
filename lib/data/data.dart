import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/class/category.dart';
import 'package:travelapp/class/travel.dart';

List negara = [
  "Indonesia",
  "Singapura",
  "Malaysia",
  "Asia",
  "Eropa",
  "Afrika",
  "Autralia",
  "Amerika",
];

List<CategoryTravel> categories = [
  CategoryTravel(name: "Travel", icon: const Icon(Icons.travel_explore)),
  CategoryTravel(name: "Hotels", icon: const Icon(Icons.home)),
  CategoryTravel(name: "Transport", icon: const Icon(Icons.directions_bus_filled)),
  CategoryTravel(name: "Event", icon: const Icon(Icons.event)),
  CategoryTravel(name: "Food", icon: const Icon(Icons.food_bank_outlined)),
  CategoryTravel(name: "Apartement", icon: const Icon(Icons.apartment)),
];

Map<String, List<Travel>> negaraTravel = {
  "": [
    Travel(
        "Sydney",
        "https://i.pinimg.com/236x/17/57/ad/1757ad0de9491c239fb16c20d46390f5.jpg",
        "location",
        "Australia",
        '4700120'),
    Travel(
        "Chigago",
        "https://i.pinimg.com/236x/95/96/31/959631386785abcc96a47cc9d6fb691e.jpg",
        "location",
        "Amerika",
        '6251002'),
    Travel(
        "Wisata Sunrise",
        "https://i.pinimg.com/564x/85/30/2f/85302f8196fdae1b116aab93d9cc03b3.jpg",
        "location",
        "Magelang",
        '1000000'),
    Travel(
        "Wisata Singapura",
        "https://i.pinimg.com/564x/47/68/02/4768028af38f73bdc59a11798207b855.jpg",
        "location",
        "Singapura",
        '1000000'),
    Travel(
        "Gatau Namanya",
        "https://i.pinimg.com/736x/5e/57/e8/5e57e859bef72324b27a8e2ab7852ec2.jpg",
        "location",
        "Belgia",
        '400000'),
    Travel(
        "Etiquette",
        "https://i.pinimg.com/736x/f2/90/48/f29048ac079dfc1a76bd9ce3b43e39ec.jpg",
        "location",
        "Jepang",
        '400000'),
  ],
  "Indonesia": [
    Travel(
        "Wisata Sunrise",
        "https://i.pinimg.com/564x/85/30/2f/85302f8196fdae1b116aab93d9cc03b3.jpg",
        "location",
        "Magelang",
        '1000000'),
    Travel(
        "Wisata Trekking",
        "https://i.pinimg.com/564x/a7/eb/ef/a7ebef8ee151db3db3ba522d8dea9211.jpg",
        "location",
        "Lombok",
        '400000'),
    Travel(
        "Air Terjun Tanggedu",
        "https://i.pinimg.com/564x/82/3e/3b/823e3be2fd24dd014f9ce2a0b9dba3ea.jpg",
        "location",
        "Sumba",
        '200000'),
    Travel(
        "Mandalika",
        "https://i.pinimg.com/736x/81/46/6e/81466e87cec7971af27029dcabb9fe32.jpg",
        "location",
        "Lombok",
        '3000000'),
  ],
  "Singapura": [
    Travel(
        "Wisata Singapura",
        "https://i.pinimg.com/564x/47/68/02/4768028af38f73bdc59a11798207b855.jpg",
        "location",
        "Singapura",
        '1000000'),
    Travel(
        "The Great Asia",
        "https://i.pinimg.com/736x/10/0c/27/100c27ed12bb325dfcdd56c920e1ccf6.jpg",
        "location",
        "Singapura",
        '400000'),
    Travel(
        "Out Of The Ordanary",
        "https://i.pinimg.com/564x/10/43/03/104303fb21ef43d8d84cad8bbfd9fb66.jpg",
        "location",
        "Singapura",
        '200000'),
    Travel(
        "Wisata Menakjubkan",
        "https://i.pinimg.com/736x/f1/06/30/f10630fe37ee1962206c63e9e8e30fba.jpg",
        "location",
        "Singapura",
        '3000000'),
  ],
  "Malaysia": [
    Travel(
        "Batu Caves",
        "https://i.pinimg.com/564x/9d/39/f5/9d39f511b9b65d02bde406babb46f2d5.jpg",
        "location",
        "Malaysia",
        '3205000'),
    Travel(
        "Petronas Towers",
        "https://i0.wp.com/handluggageonly.co.uk/wp-content/uploads/2018/02/Hand-Luggage-Only-2-2.jpg?w=1600&ssl=1",
        "location",
        "Malaysia",
        '1000000'),
    Travel(
        "Sri Mahamariamman",
        "https://i0.wp.com/handluggageonly.co.uk/wp-content/uploads/2018/02/Hand-Luggage-Only-13-2.jpg?w=1600&ssl=1",
        "location",
        "Malaysia",
        '3200000'),
    Travel(
        "Reise Nach",
        "https://i.pinimg.com/736x/9e/94/cc/9e94cce1c2f89a6ba6ab23fcb4708392.jpg",
        "location",
        "Malaysia",
        '70000'),
  ],
  "Asia": [
    Travel(
        "Wisata Balon",
        "https://i.pinimg.com/564x/da/6e/2d/da6e2dcdd96dc6f6d1fb301d5bfaa0bf.jpg",
        "location",
        "Dubai",
        '3100000'),
    Travel(
        "Etiquette",
        "https://i.pinimg.com/736x/f2/90/48/f29048ac079dfc1a76bd9ce3b43e39ec.jpg",
        "location",
        "Jepang",
        '400000'),
    Travel(
        "Tembok China",
        "https://i.pinimg.com/236x/89/d8/68/89d868bc72b35420862940a0415cb7c9.jpg",
        "location",
        "China",
        '8241000'),
    Travel(
        "Tangan Dewa",
        "https://i.pinimg.com/564x/f4/cf/5b/f4cf5b7b4786f3d84318b55e2b5b92a0.jpg",
        "location",
        "Vietnam",
        '400000'),
  ],
  "Eropa": [
    Travel(
        "Tower Eiffel",
        "https://i.pinimg.com/736x/c3/e7/67/c3e7670970c6340a95f547905bdd8fb7.jpg",
        "location",
        "Francis",
        '0'),
    Travel(
        "Bangunan Rapi",
        "https://i.pinimg.com/736x/ea/d1/07/ead107ab4ea877ebd21c3d6f30b9e8d7.jpg",
        "location",
        "Belanda",
        '400000'),
    Travel(
        "Tempat Holliwod",
        "https://i.pinimg.com/736x/53/83/64/538364bd0958c145fbb5186a9bc1e748.jpg",
        "location",
        "Inggris",
        '400000'),
    Travel(
        "Gatau Namanya",
        "https://i.pinimg.com/736x/5e/57/e8/5e57e859bef72324b27a8e2ab7852ec2.jpg",
        "location",
        "Belgia",
        '400000'),
  ],
  "Afrika": [
    Travel(
        "Kebun Bintang",
        "https://i.pinimg.com/236x/3d/39/09/3d39095441a3a57e1d229b8fd17463d6.jpg",
        "location",
        "Africa",
        '752000'),
    Travel(
        "Ghaura",
        "https://i.pinimg.com/236x/ff/ea/e8/ffeae8e07e23614a0653b02ec1642e59.jpg",
        "location",
        "Africa",
        '3420000'),
    Travel(
        "Fazaca Asa",
        "https://i.pinimg.com/736x/91/d3/0c/91d30c5debad8de0ba5c46eb23adea85.jpg",
        "location",
        "Africa",
        '250000'),
    Travel(
        "Gurun",
        "https://i.pinimg.com/474x/e9/9f/14/e99f14eaf863c32fa7acf5eec71ba38b.jpg",
        "location",
        "Africa",
        '870000'),
  ],
  "Autralia": [
    Travel(
        "Hagafayu",
        "https://i.pinimg.com/236x/57/ef/09/57ef094a9d9915b47651582d3380fbda.jpg",
        "location",
        "Australia",
        '4200120'),
    Travel(
        "Sydney",
        "https://i.pinimg.com/236x/17/57/ad/1757ad0de9491c239fb16c20d46390f5.jpg",
        "location",
        "Australia",
        '4700120'),
    Travel(
        "Kawah Fagu",
        "https://i.pinimg.com/236x/ac/16/5a/ac165a767b273bf51d6112021ac73c08.jpg",
        "location",
        "Australia",
        '8900120'),
    Travel(
        "Ciwonder",
        "https://i.pinimg.com/236x/11/fe/13/11fe1358f448b567813d7f6783332112.jpg",
        "location",
        "Australia",
        '9120120'),
  ],
  "Amerika": [
    Travel(
        "Chigago",
        "https://i.pinimg.com/236x/95/96/31/959631386785abcc96a47cc9d6fb691e.jpg",
        "location",
        "Amerika",
        '6251002'),
    Travel(
        "Patung",
        "https://i.pinimg.com/236x/b8/f9/85/b8f98526f52b6b42383127a44b82266d.jpg",
        "location",
        "Amerika",
        '6251002'),
    Travel(
        "Kota Amerika",
        "https://i.pinimg.com/736x/b0/02/51/b00251b9317f86d045cf8567b80d3cae.jpg",
        "location",
        "Amerika",
        '6251002'),
    Travel(
        "Kota Indah",
        "https://i.pinimg.com/736x/4f/6b/f9/4f6bf9eb19fa455c46abc4231af8a641.jpg",
        "location",
        "Amerika",
        '6251002'),
  ],
};
