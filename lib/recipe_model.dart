class Recipe {
  String? lebal;
  String? ImgUrl;

// This adds properties to specify that serving
// is how many people the specified quantity
// feeds and ingredients is a simple list.
  int serviings;
  List<Ingredient>? ingredients;

  Recipe(
    this.lebal,
    this.ImgUrl,
    this.serviings,
    this.ingredients
  );
  static List<Recipe> sample =[
    Recipe(
      'Spaghetti and Meatballs',
     'assets/images/spaghetti_and_meatballs.jpg',
     4, //quantity
    [
      Ingredient(1, 'box', 'Spaghetti'),
      Ingredient(4, '','Frozen Meatalls',),
      Ingredient(0.5, 'jar', 'sauce')
    ]
    ),

    Recipe(
      "Tomota Soup",
      'assets/images/tomota_soup.jpg',
      2,
      [
        Ingredient(1,'can','Tomota Soup'),
      ]
    ),
    Recipe(
      'Grilled Cheese',
      'assets/images/grilled_cheese.jpg',
      1,
      [
        Ingredient(2,'slices','cheese'),
        Ingredient(2,'slices', 'Bread'),

      ]
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/images/chocolate_chip_cookies.jpg',
      24,
      [
        Ingredient(4,'cups','flour'),
        Ingredient(2,'cups','sugar'),
        Ingredient(0.5, 'cups', 'chocolate chips')
      ]
    ),
    Recipe(
      'Taco Salad',
      'assets/images/taco_salad.jpg',
      1,
      [
        Ingredient(4,'oz', 'machos'),
        Ingredient(3,'oz','taco meat'),
        Ingredient(0.5,'cup','chese '),
        Ingredient(0.25, 'cup', 'chopped tomatoes')
      ]
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/images/hawaiian_pizza.jpg',
      4,
      [
       Ingredient(1,'item','pizza'),
       Ingredient(1, 'cup', 'pineapple'),
       Ingredient(8,'oz','ham')

      ]
    )
  ];
}

class Ingredient {
  double? quantity;
  String? measure;
  String? name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );



}
