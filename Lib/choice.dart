import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Extra/HexColor.dart';
import 'Extra/allReusedCode.dart';
class choice extends StatefulWidget {
  const choice({Key? key}) : super(key: key);

  @override
  _choiceState createState() => _choiceState();
}

class _choiceState extends State<choice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor.fromHex('Ade8f4'),

      child:
      Column(
        children: [
SizedBox(
  height: 100,
),
          Center(
            child: Text(
              'How can we help you?', style: GoogleFonts.rubik(
              fontSize: 25,
              color: HexColor.fromHex('023e8a'),
              decoration: TextDecoration.none,
            ),
            ),
          ),
      SizedBox(
        height: 50,),
          SizedBox(
            height: 100,
              child: Button('           Professional Menty Trainer', Icons.fitness_center, '0077b6', 'Caf0f8', context, '/login')),
          SizedBox(
            height: 25,),
          Center(
            child: Text(
              'or', style: GoogleFonts.rubik(
              fontSize: 25,
              color: HexColor.fromHex('023e8a'),
              decoration: TextDecoration.none,
            ),
            ),
          ),
          SizedBox(
            height: 25,),
          SizedBox(
              height: 100,
              child: Button('Self-Diagnosis & Your Customized Space', Icons.psychology_rounded, '0077b6', 'Caf0f8', context, '/quiz')),
          SizedBox(
            height: 30,),
 Photo('images/flower.png', 150, 150),



          // Button(text, icon, Bcolor, Tcolor),


        ],
      ),




    );
  }
}


