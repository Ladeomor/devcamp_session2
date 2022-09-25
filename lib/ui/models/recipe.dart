class Recipe {

  String title;
  String noOfServings;
  String timeTaken;
  String noOfReviews;
  String image;
  String? calories;
  List<Ingredient>? ingredients;
  List<Direction>? directions;


  Recipe({required this.title, required this.noOfServings, required this.image, required this.timeTaken, required this.noOfReviews, this.calories, this.ingredients, this.directions});

}
class Ingredient{
  String? first;
  String? second;
  String? third;
  String? fourth;
  String? fifth;
  String? sixth;
  String? seventh;
  String? eight;

  Ingredient({this.first, this.second, this.third, this.fourth, this.fifth, this.sixth, this.seventh});
}

class Direction{
  String? first;
  String? second;
  String? third;
  String? fourth;
  String? fifth;
  String? sixth;
  String? seventh;
  String? eight;

  Direction({this.first, this.second, this.third, this.fourth, this.fifth, this.sixth, this.seventh});
}

List<Recipe> recipes = [
    Recipe(
        title: "Chicken Fried Rice",
        noOfServings: '3 servings',
        image: 'assets/images/chicken_fried_rice.png',
        timeTaken: '30 minutes',
        noOfReviews: '345 reviews',
        calories: '675 calories',
        directions: [
          Direction(
              first: 'In a medium skillet over medium heat, \nheat olive oil. Season chicken with salt \nand pepper on both sides, then add to \nskillet, and cook until golden \nand no longer pink, \n8 minutes per side. Remove from skillet \nand let rest \n5 minutes, \nthen cut into bite-sized pieces.',
              second: 'To the same skillet, heat 1 tablespoon \nsesame oil. Add onion \nand carrots and cook until soft, 5 minutes, \nAdd garlic and ginger and cook until \nfragrant, 1 minute more. \nStir in rice and peas and cook \nuntil warmed through, 2 minutes.',
              third: 'Push rice to one side of skillet and add \nremaining tablespoon sesame \noil to other side. Add egg and stir \nuntil almost fully cooked, \nthen fold eggs into rice. Add chicken back to \nskillet with soy sauce and \ngreen onions and stir to combine'
          )

        ],
        ingredients: [
          Ingredient(first: 'Basmati rice',  second: '2 top dried italian seasoning', third: 'Salt', fourth: '2 Tbsp fresh lemon juice', fifth: '1/4 cup olive oil', sixth: 'Fresh veggies, red onion\n carrot, broccoli, ball pepper\n tomatoes and garlic')

        ],

    ),
    Recipe(title: "Pasta Bolognese", noOfServings: '2 servings', image: 'assets/images/pasta_bolognese.png', timeTaken: '20 minutes', noOfReviews: '101 reviews', calories: '675 calories' ,
      directions: [
        Direction(
            first: 'In a medium skillet over medium heat, \nheat olive oil. Season chicken with salt \nand pepper on both sides, then add to \nskillet, and cook until golden \nand no longer pink, \n8 minutes per side. Remove from skillet \nand let rest \n5 minutes, \nthen cut into bite-sized pieces.',
            second: 'To the same skillet, heat 1 tablespoon \nsesame oil. Add onion \nand carrots and cook until soft, 5 minutes, \nAdd garlic and ginger and cook until \nfragrant, 1 minute more. \nStir in rice and peas and cook \nuntil warmed through, 2 minutes.',
            third: 'Push rice to one side of skillet and add \nremaining tablespoon sesame \noil to other side. Add egg and stir \nuntil almost fully cooked, \nthen fold eggs into rice. Add chicken back to \nskillet with soy sauce and \ngreen onions and stir to combine'
        )

      ],
      ingredients: [
      Ingredient(first: 'Bovvti Spaghetti',  second: '2 top dried italian seasoning', third: 'Salt', fourth: '2 Tbsp fresh lemon juice', fifth: '1/4 cup olive oil', sixth: 'Fresh veggies, red onion\n carrot, broccoli, ball pepper\n tomatoes and garlic'),


    ],


    ),
    Recipe(title: "Steak Bacon", noOfServings: '2 servings', image: 'assets/images/steak_bacon.png', timeTaken: '15 minutes', noOfReviews: '201 reviews', calories: '675 calories',  ingredients: [
      Ingredient(first: 'Lamb thigh',  second: '2 top dried italian seasoning', third: 'Salt', fourth: '2 Tbsp fresh lemon juice', fifth: '1/4 cup olive oil', sixth: 'Fresh veggies, red onion\n carrot, broccoli, ball pepper\n tomatoes and garlic')

    ],
      directions: [
        Direction(
            first: 'In a medium skillet over medium heat, \nheat olive oil. Season chicken with salt \nand pepper on both sides, then add to \nskillet, and cook until golden \nand no longer pink, \n8 minutes per side. Remove from skillet \nand let rest \n5 minutes, \nthen cut into bite-sized pieces.',
            second: 'To the same skillet, heat 1 tablespoon \nsesame oil. Add onion \nand carrots and cook until soft, 5 minutes, \nAdd garlic and ginger and cook until \nfragrant, 1 minute more. \nStir in rice and peas and cook \nuntil warmed through, 2 minutes.',
            third: 'Push rice to one side of skillet and add \nremaining tablespoon sesame \noil to other side. Add egg and stir \nuntil almost fully cooked, \nthen fold eggs into rice. Add chicken back to \nskillet with soy sauce and \ngreen onions and stir to combine'
        )
      ],
    ),
    Recipe(title: "Steak Cambray", noOfServings: '1 serving', image: 'assets/images/steak_cambray.png', timeTaken: '15 minutes', noOfReviews: '530 reviews', calories: '675 calories',
        ingredients: [
          Ingredient(first: 'Lamb',  second: '2 top dried italian seasoning', third: 'Salt', fourth: '2 Tbsp fresh lemon juice', fifth: '1/4 cup olive oil', sixth: 'Fresh veggies, red onion\n carrot, broccoli, ball pepper\n tomatoes and garlic')

        ],
      directions: [
        Direction(
            first: 'In a medium skillet over medium heat, \nheat olive oil. Season chicken with salt \nand pepper on both sides, then add to \nskillet, and cook until golden \nand no longer pink, \n8 minutes per side. Remove from skillet \nand let rest \n5 minutes, \nthen cut into bite-sized pieces.',
            second: 'To the same skillet, heat 1 tablespoon \nsesame oil. Add onion \nand carrots and cook until soft, 5 minutes, \nAdd garlic and ginger and cook until \nfragrant, 1 minute more. \nStir in rice and peas and cook \nuntil warmed through, 2 minutes.',
            third: 'Push rice to one side of skillet and add \nremaining tablespoon sesame \noil to other side. Add egg and stir \nuntil almost fully cooked, \nthen fold eggs into rice. Add chicken back to \nskillet with soy sauce and \ngreen onions and stir to combine'
        )

      ],),
    Recipe(title: "Asparagus", noOfServings: '1 serving', image: 'assets/images/asparagus.png', timeTaken: '15 minutes', noOfReviews: '200 reviews', calories: '675 calories',
        ingredients: [
          Ingredient(first: 'Asparagus leaf',  second: '2 top dried italian seasoning', third: 'Salt', fourth: '2 Tbsp fresh lemon juice', fifth: '1/4 cup olive oil', sixth: 'Fresh veggies, red onion\n carrot, broccoli, ball pepper\n tomatoes and garlic')

        ],  directions: [
        Direction(
            first: 'In a medium skillet over medium heat, \nheat olive oil. Season chicken with salt \nand pepper on both sides, then add to \nskillet, and cook until golden \nand no longer pink, \n8 minutes per side. \nRemove from skillet \nand let rest \n5 minutes, \nthen cut into bite-sized pieces.',
            second: 'To the same skillet, heat 1 tablespoon \nsesame oil. Add onion \nand carrots and cook until soft, 5 minutes, \nAdd garlic and ginger and cook until \nfragrant, 1 minute more. \nStir in rice and peas and cook \nuntil warmed through, 2 minutes.',
            third: 'Push rice to one side of skillet and add \nremaining tablespoon sesame \noil to other side. Add egg and stir \nuntil almost fully cooked, \nthen fold eggs into rice. Add chicken back to \nskillet with soy sauce and \ngreen onions and stir to combine'
        )

      ],),


  ];
List<String> category = ['ENTREES', 'APPS', 'HEATS', 'VEGAN', 'CARBS'];