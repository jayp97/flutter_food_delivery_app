class FoodModel {
  String name;
  String description;
  String rating;
  double price;
  List<String> toppings;
  String imageUrl;
  List<String> key;

  FoodModel({
    this.toppings,
    this.name,
    this.description,
    this.rating,
    this.price,
    this.imageUrl,
    this.key,
  });
}

List<FoodModel> foodList = [
  /////////////////////////BURGERS /////////////////////////////
  FoodModel(
    name: 'Cheese Burger',
    description: 'Cheesy cheesiness',
    rating: '4.7',
    price: 10.00,
    toppings: ['beef', 'cheese', 'bread', 'tomato'],
    imageUrl: 'assets/images/burgers/cheese-burger.png',
    key: ['burger', 'cheese'],
  ),
  FoodModel(
    name: 'Chicken Burger',
    description: 'Chickeny chickeness',
    rating: '4.4',
    price: 10.00,
    toppings: ['cheese', 'bread', 'tomato', 'chicken'],
    imageUrl: 'assets/images/burgers/chicken-burger.png',
    key: ['burger', 'chicken'],
  ),
  FoodModel(
    name: 'Fish Burger',
    description: 'Fancy something fishy',
    rating: '4.3',
    price: 9.50,
    toppings: ['fish', 'bread', 'tomato'],
    imageUrl: 'assets/images/burgers/fish-burger.png',
    key: ['burger', 'fish'],
  ),

  ///////////////// FRIES //////////////////////////
  FoodModel(
    name: 'French Fries',
    description: 'French crispy goodness',
    rating: '4.7',
    price: 3.00,
    toppings: ['potato'],
    imageUrl: 'assets/images/chips/french-fries.png',
    key: ['fries', 'french', 'chips', 'potato'],
  ),
  FoodModel(
    name: 'Sweet Potato Fries',
    description: 'Sweet Potato all the way',
    rating: '4.8',
    price: 4.00,
    toppings: ['potato'],
    imageUrl: 'assets/images/chips/sweet-potato-fries.png',
    key: ['fries', 'sweet', 'potato', 'chips'],
  ),
  FoodModel(
    name: 'Potato Wedges',
    description: 'Potatoey Wedges Mmmm',
    rating: '4.6',
    price: 4.50,
    toppings: ['potato'],
    imageUrl: 'assets/images/chips/wedges.png',
    key: ['fries', 'wedges', 'potato', 'chips'],
  ),

  /////////////////////// PIZZA ////////////////////////
  FoodModel(
    name: 'Pepperoni Pizza',
    description: 'Mild heat and meaty',
    price: 8.50,
    toppings: ['beef', 'cheese', 'bread', 'tomato'],
    imageUrl: 'assets/images/pizza/pepperoni.png',
    rating: '4.7',
    key: ['pizza', 'pepperoni', 'italian'],
  ),
  FoodModel(
    name: 'Margherita Pizza',
    description: 'Cheesy and Tomatoey',
    price: 7.50,
    toppings: ['cheese', 'bread', 'tomato'],
    imageUrl: 'assets/images/pizza/margherita.png',
    rating: '4.9',
    key: ['pizza', 'margherita', 'italian', 'cheese', 'tomato'],
  ),
  FoodModel(
    name: 'BBQ Chicken Pizza',
    description: 'Hot and Smokey',
    price: 9.50,
    toppings: ['chicken', 'bread', 'corn', 'tomato', 'pepper', 'onion'],
    imageUrl: 'assets/images/pizza/bbqChicken.png',
    rating: '4.5',
    key: [
      'pizza',
      'bbq',
      'italian',
      'chicken',
      'barbecue',
      'barbeque',
      'smokey'
    ],
  ),
];

// List<FoodModel> burgerList = [
//   FoodModel(
//     name: 'Cheese Burger',
//     description: 'Cheesy cheesiness',
//     rating: '4.7',
//     price: 10.00,
//     toppings: ['beef', 'cheese', 'bread', 'tomato'],
//     imageUrl: 'assets/images/burgers/cheese-burger.png',
//     key: ['burger', 'cheese'],
//   ),
//   FoodModel(
//     name: 'Chicken Burger',
//     description: 'Chickeny chickeness',
//     rating: '4.4',
//     price: 10.00,
//     toppings: ['cheese', 'bread', 'tomato', 'chicken'],
//     imageUrl: 'assets/images/burgers/chicken-burger.png',
//     key: ['burger', 'chicken'],
//   ),
//   FoodModel(
//     name: 'Fish Burger',
//     description: 'Fancy something fishy',
//     rating: '4.3',
//     price: 9.50,
//     toppings: ['fish', 'bread', 'tomato'],
//     imageUrl: 'assets/images/burgers/fish-burger.png',
//     key: ['burger', 'fish'],
//   ),
// ];

// List<FoodModel> friesList = [
//   FoodModel(
//     name: 'French Fries',
//     description: 'French crispy goodness',
//     rating: '4.7',
//     price: 3.00,
//     toppings: ['potato'],
//     imageUrl: 'assets/images/chips/french-fries.png',
//     key: ['fries', 'french', 'chips', 'potato'],
//   ),
//   FoodModel(
//     name: 'Sweet Potato Fries',
//     description: 'Sweet Potato all the way',
//     rating: '4.8',
//     price: 4.00,
//     toppings: ['potato'],
//     imageUrl: 'assets/images/chips/sweet-potato-fries.png',
//     key: ['fries', 'sweet', 'potato', 'chips'],
//   ),
//   FoodModel(
//     name: 'Potato Wedges',
//     description: 'Potatoey Wedges Mmmm',
//     rating: '4.6',
//     price: 4.50,
//     toppings: ['potato'],
//     imageUrl: 'assets/images/chips/wedges.png',
//     key: ['fries', 'wedges', 'potato', 'chips'],
//   ),
// ];

// List<FoodModel> pizzaList = [
//   FoodModel(
//     name: 'Pepperoni Pizza',
//     description: 'Mild heat and meaty',
//     price: 8.50,
//     toppings: ['beef', 'cheese', 'bread', 'tomato'],
//     imageUrl: 'assets/images/pizza/pepperoni.png',
//     rating: '4.7',
//     key: ['pizza', 'pepperoni', 'italian'],
//   ),
//   FoodModel(
//     name: 'Margherita Pizza',
//     description: 'Cheesy and Tomatoey',
//     price: 7.50,
//     toppings: ['cheese', 'bread', 'tomato'],
//     imageUrl: 'assets/images/pizza/margherita.png',
//     rating: '4.9',
//     key: ['pizza', 'margherita', 'italian', 'cheese', 'tomato'],
//   ),
//   FoodModel(
//     name: 'BBQ Chicken Pizza',
//     description: 'Hot and Smokey',
//     price: 9.50,
//     toppings: ['chicken', 'bread', 'corn', 'tomato', 'pepper', 'onion'],
//     imageUrl: 'assets/images/pizza/bbqChicken.png',
//     rating: '4.5',
//     key: [
//       'pizza',
//       'bbq',
//       'italian',
//       'chicken',
//       'barbecue',
//       'barbeque',
//       'smokey'
//     ],
//   ),
// ];
