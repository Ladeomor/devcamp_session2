import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app_ui/ui/constants/text.dart';

class DetailScreen extends StatefulWidget {
  final String image;
  final String text;
  final String timeTaken;
  final String noOfServings;
  String? noOfCalories;
  final String noOfReviews;
  final Color color;
  String? firstIngredient;
  String? secondIngredient;
  String? thirdIngredient;
  String? fourthIngredient;
  String? fifthIngredient;
  String? sixthIngredient;
  String? firstDirection;
  String? secondDirection;
  String? thirdDirection;
  String? fourthDirection;
  String? fifthDirection;
  String? sixthDirection;


  DetailScreen({Key? key,
    required this.image, 
    required this.text, 
    required this.noOfServings, 
    required this.timeTaken, 
    required this.noOfReviews, 
    required this.noOfCalories, 
    required this.color,
    required this.firstIngredient, 
    this.secondIngredient, 
    this.thirdIngredient, 
    this.fourthIngredient, 
    this.fifthIngredient, 
    this.sixthIngredient,
    required this.firstDirection, 
    this.secondDirection, 
    this.thirdDirection, 
    this.fourthDirection, 
    this.fifthDirection, 
    this.sixthDirection, }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [Hero(
                tag: widget.image,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: 350,
                  decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20) ),

                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.arrow_back_ios, color: Colors.white, size: 15,),
                            Spacer(),
                            Icon(Icons.notifications_none,color: Colors.white, size: 20,)
                          ],
                        ),
                        AppLargeText(text: widget.text, color: Colors.white,),
                        Divider(color: Colors.white,),
                        Row(
                          children: [
                            const Icon(Icons.lock_clock_rounded, color: Colors.white,),
                            AppText(text: widget.timeTaken, color: Colors.white, size: 14,),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            const Icon(Icons.person, color: Colors.white,),
                            AppText(text: widget.noOfServings, color: Colors.white, size: 14,),

                          ],
                        ),
                        SizedBox(height: 10,),

                        Row(
                          children: [
                            const Icon(Icons.local_fire_department, color: Colors.white,),
                            AppText(text: widget.noOfCalories, color: Colors.white, size: 14,),


                          ],
                        ),
                        SizedBox(height: 10,),

                        Row(
                          children: [
                            for(int i = 0; i < 4; i++)
                              const Icon(Icons.star,color: Colors.white, size:  10,),
                            const SizedBox(width: 5,),

                            AppText(text: widget.noOfReviews, color: Colors.white, size: 14,)
                          ],
                        ),

                      ],
                    ),
                  ),

                ),

              ),
                Positioned(
                    right: 0,
                    bottom: 10,
                    top: 30,
                    child: Image.asset(widget.image, fit: BoxFit.contain, width: 200, height: 200,)),
        ]
            ),

           Container(
             padding: const EdgeInsets.all(20),
             child: Column(
               children: [
                 AppLargeText(text: 'Ingredients', color: Colors.blueGrey, size: 20,),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       children: [
                         circleDot(),
                         const SizedBox(width: 5,),
                         AppText(text: widget.firstIngredient, color: Colors.blueGrey, size: 14,),


                       ],
                     ),
                     const Spacer(),
                     Row(
                       children: [
                         circleDot(),
                         const SizedBox(width: 5,),

                         AppText(text: widget.secondIngredient, color: Colors.blueGrey,size: 14,),


                       ],
                     ),
                   ],
                 ),
                 const SizedBox(height: 30,),

                 Row(
                   children: [
                     Row(
                       children: [
                         circleDot(),
                         const SizedBox(width: 5,),

                         AppText(text: widget.thirdIngredient, color: Colors.blueGrey, size: 14,),


                       ],
                     ),
                     const Spacer(),
                     Row(
                       children: [
                         circleDot(),
                         const SizedBox(width: 5,),

                         AppText(text: widget.fourthIngredient, color: Colors.blueGrey,size: 14,),


                       ],
                     ),
                   ],
                 ),
                 const SizedBox(height: 30,),
                 Row(
                   children: [
                     Row(
                       children: [
                         circleDot(),
                         const SizedBox(width: 5,),

                         AppText(text: widget.fifthIngredient, color: Colors.blueGrey, size: 14,),


                       ],
                     ),
                     const Spacer(),
                     Row(
                       children: [
                         circleDot(),
                         const SizedBox(width: 5,),

                         AppText(text: widget.sixthIngredient, color: Colors.blueGrey,size: 14,),


                       ],
                     ),
                   ],
                 ),
                 const SizedBox(height: 20,),

                 AppLargeText(text: 'Directions', color: Colors.blueGrey, size: 20,),
                 const SizedBox(height: 20,),
                 Row(
                   children: [
                     circleDot(),
                     const SizedBox(width: 5,),

                     AppText(text: widget.firstDirection, color: Colors.blueGrey,size: 14,),

                   ],
                 ),
                 const SizedBox(height: 30,),
                 Row(
                   children: [
                     circleDot(),
                     const SizedBox(width: 5,),

                     AppText(text: widget.secondDirection, color: Colors.blueGrey,size: 14,),

                   ],
                 ),
                 const SizedBox(height: 30,),

                 Row(
                   children: [
                     circleDot(),
                     const SizedBox(width: 5,),

                     AppText(text: widget.thirdDirection, color: Colors.blueGrey,size: 14,),

                   ],
                 ),
               

               ],
             ),
           ),





          ],

        ),
      ),

    );
  }
  Widget circleDot()=>Container(

      width: 5,
      height: 5,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.color,
      ),

  );
}
