class Fries {
  String name;
  String description;
  String rating;
  double price;
  List<String> ingredients;
  String imageUrl;

  Fries({
    this.ingredients,
    this.name,
    this.description,
    this.rating,
    this.price,
    this.imageUrl,
  });
}

List<Fries> friesList = [
  Fries(
    name: 'French Fries',
    description: 'French crispy goodness',
    rating: '4.7',
    price: 4,
    ingredients: ['potato'],
    imageUrl: 'assets/images/chips/french-fries.png',
  ),
  Fries(
    name: 'Sweet Potato Fries',
    description: 'Sweet Potato all the way',
    rating: '4.8',
    price: 5.50,
    ingredients: ['potato'],
    imageUrl: 'assets/images/chips/sweet-potato-fries.png',
  ),
  Fries(
    name: 'Potato Wedges',
    description: 'Potatoey Wedges Mmmm',
    rating: '4.6',
    price: 4.50,
    ingredients: ['potato'],
    imageUrl: 'assets/images/chips/wedges.png',
  ),
];
