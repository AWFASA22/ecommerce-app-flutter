class BaseModel {
  final int id;
  final String imageUrl;
  final String name;
  final String categories;
  final double price;
  final double review;
  final double star;
  int value;

  BaseModel(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.categories,
      required this.price,
      required this.review,
      required this.star,
      required this.value});
}

List<BaseModel> item = [
  BaseModel(
    imageUrl: "assets/images/powder.jpeg",
    name: "Casual Jeans Pant",
    categories: "powder",
    price: 155.99,
    review: 3.6,
    star: 4.8,
    id: 1,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/powder.jpeg",
    name: "blue Coat",
    categories: "powder",
    price: 143.99,
    review: 5.6,
    star: 5.0,
    id: 2,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/housekeeping.jpeg",
    name: "Deep Green Jacket",
    categories: "powder",
    price: 212.99,
    review: 2.6,
    star: 3.7,
    id: 3,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/floor.jpeg",
    name: "Orange Shirt",
    categories: "powder",
    price: 432.99,
    review: 1.4,
    star: 2.4,
    id: 4,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/powder.jpeg",
    name: "Grey Pullover",
    categories: "liquid",
    price: 112.99,
    review: 4.2,
    star: 1.8,
    id: 5,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/powder.jpeg",
    name: "Pullover Sleeveless",
    categories: "liquid",
    price: 320.99,
    review: 2.1,
    star: 3.1,
    id: 6,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/jjj.jpeg",
    name: "Black Coat",
    categories: "liquid",
    price: 113.99,
    review: 3.1,
    star: 4.8,
    id: 7,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/powder.jpeg",
    name: "White Shirt",
    categories: "liquid",
    price: 178.99,
    review: 2.6,
    star: 4.8,
    id: 8,
    value: 1,
  ),
];
