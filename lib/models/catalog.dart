class CatalogModel {
  static final items = [
    Item(
        id: 1,
<<<<<<< HEAD
        name: "Bitcoin",
        desc: "BTC",
        price: 18972.90,
        color: "#33505a",
        image: "assets/images/bitcoin1.png"),
=======
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
>>>>>>> 4290590a89d49f654e7909527720277d720bd05a
    Item(
        id: 2,
        name: "item 2",
        desc: "desc 2",
<<<<<<< HEAD
        price: 363.94,
=======
        price: 999,
>>>>>>> 4290590a89d49f654e7909527720277d720bd05a
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
