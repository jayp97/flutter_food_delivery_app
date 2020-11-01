class Pizza {
  String name;
  String description;
  double price;
  List<String> toppings;
  String imageUrl;
  String rating;

  Pizza({
    this.toppings,
    this.name,
    this.description,
    this.price,
    this.imageUrl,
    this.rating,
  });
}

List<Pizza> pizzaList = [
  Pizza(
    name: 'Pepperoni Pizza',
    description: 'Mild heat and meaty',
    price: 10.50,
    toppings: ['beef', 'cheese', 'bread', 'tomato'],
    imageUrl: 'assets/images/pizza/pepperoni.png',
    rating: '4.7',
  ),
  Pizza(
    name: 'Margherita Pizza',
    description: 'Cheesy and Tomatoey',
    price: 9.50,
    toppings: ['cheese', 'bread', 'tomato'],
    imageUrl: 'assets/images/pizza/margherita.png',
    rating: '4.9',
  ),
  Pizza(
    name: 'BBQ Chicken Pizza',
    description: 'Hot and Smokey',
    price: 11.00,
    toppings: ['chicken', 'bread', 'corn', 'tomato', 'pepper', 'onion'],
    imageUrl: 'assets/images/pizza/bbqChicken.png',
    rating: '4.5',
  ),
];
