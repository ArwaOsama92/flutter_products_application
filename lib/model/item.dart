





class Item {
  String imgPath;
  double price;
  String location;
  String name;
  Item({required this.imgPath, required this.price, this.location = "main branch",required this.name});
}

final List<Item> items = [
    Item(name: "product 1",imgPath: "assets/images/bag1.jpg", price: 12.99, location: "Alma shop"),
    Item(name: "product 2",imgPath: "assets/images/bag2.jpg", price: 20.99),
    Item(name: "product 3",imgPath: "assets/images/bag3.jpg", price: 17.99),
    Item(name: "product 4",imgPath: "assets/images/bag4.jpg", price: 13.99),
    Item(name: "product 5",imgPath: "assets/images/bag7.jpg", price: 20.99),
    Item(name: "product 6",imgPath: "assets/images/bag8.jpg", price: 22.99),
    Item(name: "product 7",imgPath: "assets/images/bag9.jpg", price: 15.99),
  ];