import 'package:flutter/material.dart';
import 'package:menty/Extra/HexColor.dart';
import 'package:menty/Extra/allReusedCode.dart';
import 'package:carousel_slider/carousel_slider.dart';

class quiz extends StatefulWidget {
  const quiz({Key? key}) : super(key: key);

  @override
  _quizState createState() => _quizState();
}

class _quizState extends State<quiz> {
  @override
  Widget build(BuildContext context) {
    Quiz Sym = new Quiz('Caf0f8', '48cae4', '03045e');
    return Container(
      color: HexColor.fromHex('Ade8f4'),

      child: ListView(

        children: [
          SizedBox(height: 50,),
          Center(child: Heading('Symptoms Quiz', '03045e')),
          SizedBox(height: 25,),
          Sym.question('How often do you feel sad or down?'),
          Sym.question('How often do you have a reduced ability to concentrate?'),
          Sym.question('How often do you have excessive fears or worries, or extreme feelings of guilt?'),
          Sym.question('How often do you have extreme mood changes of highs and lows?'),
          Sym.question('How often do you withdraw yourself from friends and social activities?'),
          Sym.question('How often do you feel significant tiredness, low energy or problems sleeping?'),
          Sym.question('How often do you feel a detachment from reality (delusions), paranoia or hallucinations?'),
          Sym.question('How often do you have trouble understanding and relating to situations and to people?'),
          Sym.question('How often do you consume alcohol or drugs?'),
          Sym.question('How often do you feel excessive anger at someone or something?'),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialButton(onPressed: (){
              Navigator.pushNamed(context, '/free');
            },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              color: HexColor.fromHex('Caf0f8'),
              child: IconWithText(Icons.arrow_forward_ios, 'Generate my menty', '03045e'),
            ),
          )
        ],

      )

    );
  }
}


/*
CarouselSlider(
              options: CarouselOptions(
                initialPage: 0,
                height: 450,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlayInterval: const Duration(seconds: 10),
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayCurve: Curves.decelerate,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Text('How often do you feel...', style: style(20, '00b4d8'),),
                Sym.QuizQuestion('sad or down', options , '00b4d8', '00b4d8', '03045e', 18),



              ]
          )
 */