import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app_ui/ui/constants/color.dart';
import 'package:recipe_app_ui/ui/models/recipe.dart';
import 'package:recipe_app_ui/ui/screens/detail_screen.dart';
import 'package:recipe_app_ui/ui/widgets/category_container.dart';
import 'package:recipe_app_ui/ui/widgets/recipe_container.dart';
import 'package:recipe_app_ui/ui/widgets/search_textfield.dart';

import '../constants/text.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.sort,
          color: Colors.white,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
          )
        ],
      ),

      body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: 'Hi, Praise', color: Colors.grey,),
                    AppLargeText(text: 'What do you want to cook \ntoday?', color: Colors.white,),
                    const SizedBox(height: 10,),
                    const SearchTextField(),
                    const SizedBox(height: 30,),

                    AppLargeText(text: 'Most Popular Recipes', color: Colors.white70, size: 18,),
                    SizedBox(
                      height: 350,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: recipes.length,
                          itemBuilder: (context, index){

                        return GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(
                                image: recipes[index].image,
                                text: recipes[index].title,
                                noOfServings: recipes[index].noOfServings,
                                timeTaken: recipes[index].timeTaken,
                                noOfReviews: recipes[index].noOfReviews,
                                noOfCalories: recipes[index].calories,
                                color: color[index],
                                firstIngredient: recipes[index].ingredients![0].first ?? '',
                                secondIngredient: recipes[index].ingredients![0].second ?? '',
                                thirdIngredient: recipes[index].ingredients![0].third ?? '',
                                fourthIngredient: recipes[index].ingredients![0].fourth ?? '',
                                fifthIngredient: recipes[index].ingredients![0].fifth ?? '',
                                sixthIngredient: recipes[index].ingredients![0].sixth ?? '',
                                firstDirection: recipes[index].directions![0].first ?? '',
                                secondDirection: recipes[index].directions![0].second ?? '',
                                thirdDirection: recipes[index].directions![0].third ?? '',
                              )
                              ));
                            },
                        child: RecipeContainer(
                            containerColor: color[index],
                            heroTag: recipes[index].image,
                            recipeImage: recipes[index].image,
                            recipeTitle: recipes[index].title,
                            noOfReviews: recipes[index].noOfReviews,
                            timeTaken: recipes[index].timeTaken,
                            noOfServings: recipes[index].noOfServings
                        ));
                      }),
                    ),

                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: category.length,
                          itemBuilder: (context, index){
                          if(index == 0){
                            return const Icon(Icons.category, color: Colors.white,);
                          }
                            return CategoryContainer(categoryText: category[index],);
                          }),
                    )

                  ],
                ),
              ),
            ],
          )

      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.blueGrey.shade600,

            borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
        ),
        height: 50,
        child: Row(
          children: const [
            Icon(Icons.home, color: Colors.white24,),
            Spacer(),
            Icon(Icons.favorite,  color: Colors.white24,),
            Spacer(),

            Icon(Icons.fastfood,  color: Colors.white24,),
            Spacer(),

            Icon(Icons.category,  color: Colors.white24,),
          ],
        ),
      )
    );
  }
}
