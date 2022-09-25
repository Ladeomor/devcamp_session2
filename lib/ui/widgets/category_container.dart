import 'package:flutter/material.dart';
import 'package:recipe_app_ui/ui/constants/text.dart';


class CategoryContainer extends StatelessWidget {
  final String categoryText;
  const CategoryContainer({Key? key, required this.categoryText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10, left: 10),

        height: 50,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade800,
        borderRadius: BorderRadius.all(
        Radius.circular(10)
      ),
      ),
      child: Center(child: AppText(text: categoryText, color: Colors.white, size: 12,))
    );
  }
}
