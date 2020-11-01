class Burger {
  String name;
  String description;
  String rating;
  double price;
  List<String> ingredients;
  String imageUrl;

  Burger({
    this.ingredients,
    this.name,
    this.description,
    this.rating,
    this.price,
    this.imageUrl,
  });
}

List<Burger> burgerList = [
  Burger(
    name: 'Cheese Burger',
    description: 'Cheesy cheesiness',
    rating: '4.7',
    price: 12,
    ingredients: ['beef', 'cheese', 'bread', 'tomato'],
    imageUrl: 'assets/images/burgers/cheese-burger.png',
  ),
  Burger(
    name: 'Chicken Burger',
    description: 'Chickeny chickeness',
    rating: '4.4',
    price: 10.50,
    ingredients: ['cheese', 'bread', 'tomato', 'chicken'],
    imageUrl: 'assets/images/burgers/chicken-burger.png',
  ),
  Burger(
    name: 'Fish Burger',
    description: 'Fancy something fishy',
    rating: '4.3',
    price: 11.50,
    ingredients: ['fish', 'bread', 'tomato'],
    imageUrl: 'assets/images/burgers/fish-burger.png',
  ),
];
