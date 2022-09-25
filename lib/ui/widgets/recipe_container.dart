import 'package:flutter/material.dart';
import 'package:recipe_app_ui/ui/constants/color.dart';
import 'package:recipe_app_ui/ui/constants/text.dart';
import 'package:recipe_app_ui/ui/models/recipe.dart';

class RecipeContainer extends StatelessWidget {
  final Color containerColor;
  final Object heroTag;
  final String recipeImage;
  final String recipeTitle;
  final String timeTaken;
  final String noOfReviews;
  final String noOfServings;

  const RecipeContainer({Key? key, required this.containerColor, required this.heroTag, required this.recipeImage, required this.recipeTitle, required this.noOfReviews, required this.timeTaken, required this.noOfServings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 200,
    decoration: BoxDecoration(
      color: containerColor,
      borderRadius: BorderRadius.all(
        Radius.circular(20)
      ),
      boxShadow: [kBoxShadow],
    ),
    margin: EdgeInsets.only(right: 16, left:  16 , bottom: 16, top: 8),
    padding: EdgeInsets.only(left: 16, bottom: 5, top: 10, right: 10),
    width: 220,
    child: Hero(
      tag: heroTag,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(recipeImage),
            AppText(text: recipeTitle, color: Colors.white,),
            Divider(thickness: 0.5, color: Colors.white, ),
            Padding(
              padding: const EdgeInsets.only(left: 20,),
              child: Column(

                children: [
                  Row(
                    children: [
                      Icon(Icons.punch_clock, size: 10, color: Colors.white,),
                      SizedBox(width: 2,),
                      AppText(text: timeTaken, color: Colors.white, size: 13,),
                      SizedBox(width: 5,),

                      Icon(Icons.person, size: 10, color: Colors.white,),
                      SizedBox(width: 2,),

                      AppText(text: noOfServings, color: Colors.white,size: 13,),
                    ],
                  ),
                  Row(
                    children: [
                      for(int i = 0; i < 4; i++)
                        const Icon(Icons.star,color: Colors.white, size: 8,),
                      SizedBox(width: 5,),

                      AppText(text: noOfReviews, color: Colors.white, size: 13,)
                    ],
                  )

                ],
              ),
            ),



          ],
        ),
      ),



    ),
      );
  }
}
