class CatalogueModel {
  static final items = [
    Item(
        id: "001",
        name: "product1",
        desc: "product1 description",
        price: 49999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2016/11/04/15/27/halloween-1798080_960_720.jpg")
  ];
}

class Item {
  final String id;
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

  final products = [
    Item(
        id: "001",
        name: "product1",
        desc: "product1 description",
        price: 49999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2016/11/04/15/27/halloween-1798080_960_720.jpg")
  ];
}
