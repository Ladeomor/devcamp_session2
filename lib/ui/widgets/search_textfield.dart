import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 20),

      height: 50,
      decoration: BoxDecoration(
        // border: Border.all(width: 1, color: Colors.black54),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child:  TextField(
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1,color: Colors.white)
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(1)),
              borderSide: BorderSide(width: 1,color: Colors.white )
          ),

          fillColor: Colors.white,
          filled: true,
          hintText: 'Search recipes...',
          hintStyle: GoogleFonts.poppins( color: Colors.brown.withOpacity(0.5), fontSize: 16, fontWeight: FontWeight.w500),
          prefixIcon: const Icon(Icons.search, color: Colors.brown,),

        ),

      ),

    );

  }
}
