class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Bitcoin",
        desc: "BTC",
        price: 18972.90,
        color: "#33505a",
        image: "assets/images/bitcoin1.png"),
    Item(
        id: 2,
        name: "item 2",
        desc: "desc 2",
        price: 363.94,
        color: "#33550a",
        image: "assets/images/makeitrain.png")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
