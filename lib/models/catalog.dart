class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Bitcoin",
        desc: "BTC",
        price: 18931.72,
        color: "#33505a",
        image:
            "https://media.istockphoto.com/vectors/bitcoin-internet-money-icon-vector-vector-id1139020309?k=20&m=1139020309&s=612x612&w=0&h=Y72ip4Gf2khJU5xYG9AO9sNmM-S_l-h7Ie7hOaaHDKs="),
    Item(
        id: 2,
        name: "BNB",
        desc: "BNB",
        price: 267.50,
        color: "#33505a",
        image:
            "https://altcoinreviews.org/wp-content/uploads/2021/11/bnbb.png"),
    Item(
        id: 3,
        name: "Ethernum",
        desc: "ETH",
        price: 1345.23,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
    Item(
        id: 4,
        name: "Ripple",
        desc: "XRP",
        price: 0.4042,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
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
