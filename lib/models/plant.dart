import 'package:lorem_ipsum/lorem_ipsum.dart';

class Plant {
  final String imgUrl;

  final String name;

  final double price;

  final bool isSaved;

  final double rate;

  final String description;

  final int reviews;

  Plant({
    this.imgUrl,
    this.name,
    this.price,
    this.isSaved = false,
    this.rate,
    this.description,
    this.reviews,
  });
}

List<Plant> data = [
  Plant(
    name: "Monstera DK Var (L)",
    imgUrl: "assets/img/1.jpg",
    reviews: 129,
    rate: 5,
    isSaved: true,
    price: 300,
    description: loremIpsum(words: 49),
  ),
  Plant(
    name: "Monstera America Var (L)",
    imgUrl: "assets/img/2.jpg",
    reviews: 120,
    rate: 4,
    price: 325,
    description: loremIpsum(words: 42),
  ),
  Plant(
    name: "Monstera Deliciosa (L)",
    imgUrl: "assets/img/3.jpg",
    reviews: 35,
    rate: 3,
    price: 110,
    description: loremIpsum(words: 50),
  ),
  Plant(
    name: "Monstera Primera (S)",
    imgUrl: "assets/img/4.jpg",
    reviews: 109,
    rate: 4,
    price: 300,
    description: loremIpsum(words: 30),
  ),
  Plant(
    name: "Monstera Latina (M)",
    imgUrl: "assets/img/5.jpg",
    reviews: 85,
    rate: 4,
    price: 250,
    description: loremIpsum(words: 40),
  ),
];
